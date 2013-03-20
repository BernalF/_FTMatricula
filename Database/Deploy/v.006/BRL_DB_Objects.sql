USE matriFunDB
GO

IF OBJECT_ID('[FK_Enrollment_Plan]', 'F') IS NOT NULL
	ALTER TABLE [dbo].[Enrollment] DROP CONSTRAINT [FK_Enrollment_Plan]
GO

IF OBJECT_ID('[FK_Enrollment_Location]', 'F') IS NOT NULL
	ALTER TABLE [dbo].[Enrollment] DROP CONSTRAINT [FK_Enrollment_Location]
GO


IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_EnrollmentGroupSchedule_EnrollmentGroups]') AND parent_object_id = OBJECT_ID(N'[dbo].[EnrollmentGroupSchedule]'))
ALTER TABLE [dbo].[EnrollmentGroupSchedule] DROP CONSTRAINT [FK_EnrollmentGroupSchedule_EnrollmentGroups]
GO

IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_StudentPlan_Plan]') AND parent_object_id = OBJECT_ID(N'[dbo].[StudentPlan]'))
ALTER TABLE [dbo].[StudentPlan] DROP CONSTRAINT [FK_StudentPlan_Plan]
GO

IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_StudentPlan_Student]') AND parent_object_id = OBJECT_ID(N'[dbo].[StudentPlan]'))
ALTER TABLE [dbo].[StudentPlan] DROP CONSTRAINT [FK_StudentPlan_Student]
GO

IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_EnrollmentCourse_Course]') AND parent_object_id = OBJECT_ID(N'[dbo].[EnrollmentCourse]'))
ALTER TABLE [dbo].[EnrollmentCourse] DROP CONSTRAINT [FK_EnrollmentCourse_Course]
GO

IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_EnrollmentCourse_Enrollment]') AND parent_object_id = OBJECT_ID(N'[dbo].[EnrollmentCourse]'))
ALTER TABLE [dbo].[EnrollmentCourse] DROP CONSTRAINT [FK_EnrollmentCourse_Enrollment]
GO

IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_EnrollmentGroups_Classroom]') AND parent_object_id = OBJECT_ID(N'[dbo].[EnrollmentGroups]'))
ALTER TABLE [dbo].[EnrollmentGroups] DROP CONSTRAINT [FK_EnrollmentGroups_Classroom]
GO

IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_EnrollmentGroups_EnrollmentCourse]') AND parent_object_id = OBJECT_ID(N'[dbo].[EnrollmentGroups]'))
ALTER TABLE [dbo].[EnrollmentGroups] DROP CONSTRAINT [FK_EnrollmentGroups_EnrollmentCourse]
GO

IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_EnrollmentGroups_Users]') AND parent_object_id = OBJECT_ID(N'[dbo].[EnrollmentGroups]'))
ALTER TABLE [dbo].[EnrollmentGroups] DROP CONSTRAINT [FK_EnrollmentGroups_Users]
GO


----------------------------------------///----------------------------------------

/****** Object:  Table [dbo].[EnrollmentGroups]    Script Date: 03/03/2013 17:42:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EnrollmentGroups]') AND type in (N'U'))
DROP TABLE [dbo].[EnrollmentGroups]
GO


/****** Object:  Table [dbo].[EnrollmentCourse]    Script Date: 03/03/2013 16:48:54 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EnrollmentCourse]') AND type in (N'U'))
DROP TABLE [dbo].[EnrollmentCourse]
GO

/****** Object:  Table [dbo].[StudentPlan]    Script Date: 03/03/2013 16:28:10 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[StudentPlan]') AND type in (N'U'))
DROP TABLE [dbo].[StudentPlan]
GO


IF OBJECT_ID('dbo.Enrollment', 'U') IS NOT NULL
	DROP TABLE [dbo].[Enrollment]
GO


IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EnrollmentGroupSchedule]') AND type in (N'U'))
DROP TABLE [dbo].[EnrollmentGroupSchedule]
GO
----------------------------------------///----------------------------------------




/****** Object:  Table [dbo].[Enrollment]    Script Date: 12/31/2012 10:54:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Enrollment](
	[EnrollmentID] [uniqueidentifier] NOT NULL,
	[Description] [varchar](120) NOT NULL,
	[PlanID] [uniqueidentifier] NOT NULL,
	
	[InsertDate] [datetime] NULL,
	[InsertUserID] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyUserID] [uniqueidentifier] NULL,
	[IpAddress] [varchar](200) NULL,
	
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	
	[ExtraStartDate] [datetime] NULL,
	[ExtraEndDate] [datetime] NULL,
	
	[VerifyDates] [bit] NOT NULL,
	[LocationID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Enrollment] PRIMARY KEY CLUSTERED 
(
	[EnrollmentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO


-----------------------------


CREATE TABLE [dbo].[StudentPlan](
	[StudentID] [uniqueidentifier] NOT NULL,
	[PlanID] [uniqueidentifier] NOT NULL,
	
	[InsertDate] [datetime] NULL,
	[InsertUserID] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyUserID] [uniqueidentifier] NULL,
	[IpAddress] [varchar](200) NULL,
	
 CONSTRAINT [PK_StudentPlan] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC,
	[PlanID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

---------------------------


/****** Object:  Table [dbo].[EnrollmentCourse]    Script Date: 03/03/2013 16:48:54 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[EnrollmentCourse](
	[EnrollmentCourseID] [uniqueidentifier] NOT NULL,
	[EnrollmentID] [uniqueidentifier] NOT NULL,
	[CourseID] [uniqueidentifier] NOT NULL,
	[IsChecked] [bit] NOT NULL,
	[HasGroups] [bit] NOT NULL,
	
	[InsertDate] [datetime] NULL,
	[InsertUserID] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyUserID] [uniqueidentifier] NULL,
	[IpAddress] [varchar](200) NULL,
	
 CONSTRAINT [PK_EnrollmentCourse] PRIMARY KEY CLUSTERED 
(
	[EnrollmentCourseID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


---------------------------


/****** Object:  Table [dbo].[EnrollmentGroups]    Script Date: 03/03/2013 17:42:38 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[EnrollmentGroups](
	[EnrollmentGroupID] [uniqueidentifier] NOT NULL,
	[EnrollmentCourseID] [uniqueidentifier] NOT NULL,
	[GroupName] [varchar](80) NOT NULL,
	[ClassroomID] [uniqueidentifier] NULL,
	[ProfessorID] [uniqueidentifier] NULL,
	[Quota] [int] NOT NULL,
	
	[InsertDate] [datetime] NULL,
	[InsertUserID] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyUserID] [uniqueidentifier] NULL,
	[IpAddress] [varchar](200) NULL,
	
 CONSTRAINT [PK_EnrollmentGroups] PRIMARY KEY CLUSTERED 
(
	[EnrollmentGroupID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

--------------------------


/****** Object:  Table [dbo].[EnrollmentGroupSchedule]    Script Date: 03/03/2013 18:05:39 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[EnrollmentGroupSchedule](
	[EnrollmentGroupScheduleID] [uniqueidentifier] NOT NULL,
	[EnrollmentGroupID] [uniqueidentifier] NOT NULL,
	[Day] [varchar](50) NOT NULL,
	[StartTime] [datetime] NOT NULL,
	[EndTime] [datetime] NOT NULL,
	
	[InsertDate] [datetime] NULL,
	[InsertUserID] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyUserID] [uniqueidentifier] NULL,
	[IpAddress] [varchar](200) NULL,
 CONSTRAINT [PK_EnrollmentGroupSchedule] PRIMARY KEY CLUSTERED 
(
	[EnrollmentGroupScheduleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO



/********************************************************/
			------------ REFERENCE ----------
/********************************************************/


ALTER TABLE [dbo].[StudentPlan]  WITH CHECK ADD  CONSTRAINT [FK_StudentPlan_Plan] FOREIGN KEY([PlanID])
REFERENCES [dbo].[Plan] ([PlanID])
GO

ALTER TABLE [dbo].[StudentPlan] CHECK CONSTRAINT [FK_StudentPlan_Plan]
GO

ALTER TABLE [dbo].[StudentPlan]  WITH CHECK ADD  CONSTRAINT [FK_StudentPlan_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
GO

ALTER TABLE [dbo].[StudentPlan] CHECK CONSTRAINT [FK_StudentPlan_Student]
GO


/****** Object:  ForeignKey [FK_Enrollment_Plan]    Script Date: 12/31/2012 10:54:49 ******/
ALTER TABLE [dbo].[Enrollment]  WITH CHECK ADD  CONSTRAINT [FK_Enrollment_Plan] FOREIGN KEY([PlanID])
REFERENCES [dbo].[Plan] ([PlanID])
GO
ALTER TABLE [dbo].[Enrollment] CHECK CONSTRAINT [FK_Enrollment_Plan]
GO

/****** Object:  ForeignKey [FK_Enrollment_Location]    Script Date: 12/31/2012 10:54:49 ******/
ALTER TABLE [dbo].[Enrollment]  WITH CHECK ADD  CONSTRAINT [FK_Enrollment_Location] FOREIGN KEY([LocationID])
REFERENCES [dbo].[Location] ([LocationID])
GO
ALTER TABLE [dbo].[Enrollment] CHECK CONSTRAINT [FK_Enrollment_Location]
GO

ALTER TABLE [dbo].[EnrollmentGroupSchedule]  WITH CHECK ADD  CONSTRAINT [FK_EnrollmentGroupSchedule_EnrollmentGroups] FOREIGN KEY([EnrollmentGroupID])
REFERENCES [dbo].[EnrollmentGroups] ([EnrollmentGroupID])
GO

ALTER TABLE [dbo].[EnrollmentGroupSchedule] CHECK CONSTRAINT [FK_EnrollmentGroupSchedule_EnrollmentGroups]
GO

ALTER TABLE [dbo].[EnrollmentCourse]  WITH CHECK ADD  CONSTRAINT [FK_EnrollmentCourse_Course] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Course] ([CourseID])
GO

ALTER TABLE [dbo].[EnrollmentCourse] CHECK CONSTRAINT [FK_EnrollmentCourse_Course]
GO

ALTER TABLE [dbo].[EnrollmentCourse]  WITH CHECK ADD  CONSTRAINT [FK_EnrollmentCourse_Enrollment] FOREIGN KEY([EnrollmentID])
REFERENCES [dbo].[Enrollment] ([EnrollmentID])
GO

ALTER TABLE [dbo].[EnrollmentCourse] CHECK CONSTRAINT [FK_EnrollmentCourse_Enrollment]
GO


ALTER TABLE [dbo].[EnrollmentGroups]  WITH CHECK ADD  CONSTRAINT [FK_EnrollmentGroups_Classroom] FOREIGN KEY([ClassroomID])
REFERENCES [dbo].[Classroom] ([ClassroomID])
GO

ALTER TABLE [dbo].[EnrollmentGroups] CHECK CONSTRAINT [FK_EnrollmentGroups_Classroom]
GO

ALTER TABLE [dbo].[EnrollmentGroups]  WITH CHECK ADD  CONSTRAINT [FK_EnrollmentGroups_EnrollmentCourse] FOREIGN KEY([EnrollmentCourseID])
REFERENCES [dbo].[EnrollmentCourse] ([EnrollmentCourseID])
GO

ALTER TABLE [dbo].[EnrollmentGroups] CHECK CONSTRAINT [FK_EnrollmentGroups_EnrollmentCourse]
GO

ALTER TABLE [dbo].[EnrollmentGroups]  WITH CHECK ADD  CONSTRAINT [FK_EnrollmentGroups_Users] FOREIGN KEY([ProfessorID])
REFERENCES [dbo].[Users] ([UserId])
GO

ALTER TABLE [dbo].[EnrollmentGroups] CHECK CONSTRAINT [FK_EnrollmentGroups_Users]
GO
