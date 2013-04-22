﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Kendo.Mvc.UI;
using Kendo.Mvc.Extensions;
using FTMatricula.Utilities.Helper;
using FTMatricula.Models;

namespace FTMatricula.Controllers
{
    [KendoAjaxErrorHandler]
    public class ScoreRegisterController : Controller
    {
        private matrifunDBEntities db = new matrifunDBEntities();

        // GET: /Index/
        public ActionResult Index()
        {
            return View();
        }

        /// <summary>
        /// Paging Scores by Course
        /// </summary>
        [HttpPost]
        public ActionResult PagingScores([DataSourceRequest] DataSourceRequest request, string CourseID)
        {
            try
            {
                if (CourseID != null)
                {
                    var uID = SessApp.GetUserID(User.Identity.Name);

                    return Json(db.Scores
                                .Where(s => s.EnrollmentGroup.ProfessorID == uID && s.CourseID == new Guid(CourseID))
                                .Select(s => new
                                {
                                    s.ScoreID,
                                    s.CourseID,
                                    s.EnrollmentGroupID,
                                    s.StudentID,
                                    UserName = s.Student.User.UserName,
                                    FirstName = s.Student.FirstName,
                                    LastName = s.Student.LastName,
                                    s.Result

                                })
                                .ToDataSourceResult(request));
                }
                else
                {
                    return Json(new[] { new { } }.ToDataSourceResult(request, ModelState));
                }
            }
            catch (Exception e)
            {
                throw new ApplicationException(e.Message, e.InnerException.InnerException);
            }
        }

        /// <summary>
        /// Update Batch Method Score
        /// </summary>
        /// <param name="request"></param>
        /// <param name="model"></param>
        /// <returns></returns>
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult UpdateScore([DataSourceRequest] DataSourceRequest request, [Bind(Prefix = "models")]IEnumerable<Score> scores)
        {
            try
            {
                foreach (var s in scores)
                {
                    s.RecordResult = s.Result;
                    s.ModifyUserID = SessApp.GetUserID(User.Identity.Name);
                    s.ModifyDate = DateTime.Today;
                    s.IpAddress = Network.GetIpAddress(Request);                    
                    db.Entry(s).State = EntityState.Modified;
                    db.SaveChanges();
                }
                return Json(ModelState.ToDataSourceResult());
            }
            catch (Exception e)
            {
                throw new ApplicationException(e.Message, e.InnerException.InnerException);
            }
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}