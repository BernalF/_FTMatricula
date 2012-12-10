
USE [matriFunDB]
GO
/****** Object:  Table [dbo].[Location]    Script Date: 11/17/2012 22:57:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Location](
	[LocationID] [uniqueidentifier] NOT NULL,
	[Name] [varchar](120) NOT NULL,
	[Description] [varchar](300) NULL,
	[InsertDate] [datetime] NULL,
	[InsertUserID] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyUserID] [uniqueidentifier] NULL,
	[IpAddress] [varchar](200) NULL,
 CONSTRAINT [PK_Location] PRIMARY KEY CLUSTERED 
(
	[LocationID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Place]    Script Date: 11/17/2012 22:57:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Place](
	[PlaseID] [uniqueidentifier] NOT NULL,
	[InsertDate] [datetime] NULL,
	[InsertUserID] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyUserID] [uniqueidentifier] NULL,
	[IpAddress] [varchar](200) NULL	
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Modality]    Script Date: 11/17/2012 22:57:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Modality](
	[ModalityID] [uniqueidentifier] NOT NULL,
	[Name] [varchar](120) NOT NULL,
	[Description] [varchar](300) NULL,
	[InsertDate] [datetime] NULL,
	[InsertUserID] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyUserID] [uniqueidentifier] NULL,
	[IpAddress] [varchar](200) NULL,
 CONSTRAINT [PK_Modality] PRIMARY KEY CLUSTERED 
(
	[ModalityID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Classroom]    Script Date: 11/17/2012 22:57:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Classroom](
	[ClassroomID] [uniqueidentifier] NOT NULL,
	[Code] [varchar](50) NULL,
	[InsertDate] [datetime] NULL,
	[InsertUserID] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyUserID] [uniqueidentifier] NULL,
	[IpAddress] [varchar](200) NULL,
 CONSTRAINT [PK_Classroom] PRIMARY KEY CLUSTERED 
(
	[ClassroomID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Applications]    Script Date: 11/17/2012 22:57:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Applications](
	[ApplicationName] [nvarchar](235) NOT NULL,
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](256) NULL,
	[InsertDate] [datetime] NULL,
	[InsertUserID] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyUserID] [uniqueidentifier] NULL,
	[IpAddress] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[ApplicationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[School]    Script Date: 11/17/2012 22:57:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[School](
	[SchoolID] [uniqueidentifier] NOT NULL,
	[Name] [varchar](120) NOT NULL,
	[Description] [varchar](300) NULL,
	[InsertDate] [datetime] NULL,
	[InsertUserID] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyUserID] [uniqueidentifier] NULL,
	[IpAddress] [varchar](200) NULL,
 CONSTRAINT [PK_School] PRIMARY KEY CLUSTERED 
(
	[SchoolID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Requirement]    Script Date: 11/17/2012 22:57:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Requirement](
	[RequirementID] [uniqueidentifier] NOT NULL,
	[Name] [varchar](120) NOT NULL,
	[TypeID] [uniqueidentifier] NOT NULL,
	[InsertDate] [datetime] NULL,
	[InsertUserID] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyUserID] [uniqueidentifier] NULL,
	[IpAddress] [varchar](200) NULL,
 CONSTRAINT [PK_Requirement] PRIMARY KEY CLUSTERED 
(
	[RequirementID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Type]    Script Date: 11/17/2012 22:57:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Type](
	[TypeID] [uniqueidentifier] NOT NULL,
	[Name] [varchar](120) NOT NULL,
	[Description] [varchar](300) NULL,
	[Usage] [varchar](4) NULL,
	[InsertDate] [datetime] NULL,
	[InsertUserID] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyUserID] [uniqueidentifier] NULL,
	[IpAddress] [varchar](200) NULL,
 CONSTRAINT [PK_Type] PRIMARY KEY CLUSTERED 
(
	[TypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Users]    Script Date: 11/17/2012 22:57:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[IsAnonymous] [bit] NOT NULL,
	[LastActivityDate] [datetime] NOT NULL,
	[InsertDate] [datetime] NULL,
	[InsertUserID] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyUserID] [uniqueidentifier] NULL,
	[IpAddress] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Scheme]    Script Date: 11/17/2012 22:57:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Scheme](
	[SchemeID] [uniqueidentifier] NOT NULL,
	[Description] [varchar](120) NOT NULL,
	[OwnerUserId] [uniqueidentifier] NOT NULL,
	[CoordinatorUserId] [uniqueidentifier] NOT NULL,
	[TypeID] [uniqueidentifier] NOT NULL,
	[InsertDate] [datetime] NULL,
	[InsertUserID] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyUserID] [uniqueidentifier] NULL,
	[IpAddress] [varchar](200) NULL,
 CONSTRAINT [PK_Scheme] PRIMARY KEY CLUSTERED 
(
	[SchemeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 11/17/2012 22:57:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[RoleName] [nvarchar](256) NOT NULL,
	[Description] [nvarchar](256) NULL,
	[InsertDate] [datetime] NULL,
	[InsertUserID] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyUserID] [uniqueidentifier] NULL,
	[IpAddress] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 11/17/2012 22:57:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Course](
	[CourseID] [uniqueidentifier] NOT NULL,
	[Name] [varchar](120) NOT NULL,
	[Description] [varchar](300) NOT NULL,
	[ClassroomID] [uniqueidentifier] NOT NULL,
	[RequirementID] [uniqueidentifier] NULL,
	[InsertDate] [datetime] NULL,
	[InsertUserID] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyUserID] [uniqueidentifier] NULL,
	[IpAddress] [varchar](200) NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[CourseID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Plan]    Script Date: 11/17/2012 22:57:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Plan](
	[PlanID] [uniqueidentifier] NOT NULL,
	[Name] [varchar](120) NOT NULL,
	[Description] [varchar](300) NULL,
	[LocationID] [uniqueidentifier] NOT NULL,
	[InsertDate] [datetime] NULL,
	[InsertUserID] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyUserID] [uniqueidentifier] NULL,
	[IpAddress] [varchar](200) NULL,
 CONSTRAINT [PK_Plan] PRIMARY KEY CLUSTERED 
(
	[PlanID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Memberships]    Script Date: 11/17/2012 22:57:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Memberships](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[Password] [nvarchar](128) NOT NULL,
	[PasswordFormat] [int] NOT NULL,
	[PasswordSalt] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[PasswordQuestion] [nvarchar](256) NULL,
	[PasswordAnswer] [nvarchar](128) NULL,
	[IsApproved] [bit] NOT NULL,
	[IsLockedOut] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastLoginDate] [datetime] NOT NULL,
	[LastPasswordChangedDate] [datetime] NOT NULL,
	[LastLockoutDate] [datetime] NOT NULL,
	[FailedPasswordAttemptCount] [int] NOT NULL,
	[FailedPasswordAttemptWindowStart] [datetime] NOT NULL,
	[FailedPasswordAnswerAttemptCount] [int] NOT NULL,
	[FailedPasswordAnswerAttemptWindowsStart] [datetime] NOT NULL,
	[Comment] [nvarchar](256) NULL,
	[InsertDate] [datetime] NULL,
	[InsertUserID] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyUserID] [uniqueidentifier] NULL,
	[IpAddress] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enrollment]    Script Date: 11/17/2012 22:57:12 ******/
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
 CONSTRAINT [PK_Enrollment] PRIMARY KEY CLUSTERED 
(
	[EnrollmentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Scheme-Requirement]    Script Date: 11/17/2012 22:57:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Scheme-Requirement](
	[SchemeID] [uniqueidentifier] NOT NULL,
	[RequirementID] [uniqueidentifier] NOT NULL,
	[InsertDate] [datetime] NULL,
	[InsertUserID] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyUserID] [uniqueidentifier] NULL,
	[IpAddress] [varchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Scheme-Plan]    Script Date: 11/17/2012 22:57:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Scheme-Plan](
	[SchemeID] [uniqueidentifier] NOT NULL,
	[PlanID] [uniqueidentifier] NOT NULL,
	[InsertDate] [datetime] NULL,
	[InsertUserID] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyUserID] [uniqueidentifier] NULL,
	[IpAddress] [varchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 11/17/2012 22:57:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[StudentID] [uniqueidentifier] NOT NULL,
	[UserID] [uniqueidentifier] NOT NULL,
	[IdentificationTypeID] [uniqueidentifier] NOT NULL,
	[InsertDate] [datetime] NULL,
	[InsertUserID] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyUserID] [uniqueidentifier] NULL,
	[IpAddress] [varchar](200) NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsersInRoles]    Script Date: 11/17/2012 22:57:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersInRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[InsertDate] [datetime] NULL,
	[InsertUserID] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyUserID] [uniqueidentifier] NULL,
	[IpAddress] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[School-Scheme]    Script Date: 11/17/2012 22:57:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[School-Scheme](
	[SchoolID] [uniqueidentifier] NOT NULL,
	[SchemeID] [uniqueidentifier] NOT NULL,
	[InsertDate] [datetime] NULL,
	[InsertUserID] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyUserID] [uniqueidentifier] NULL,
	[IpAddress] [varchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Profiles]    Script Date: 11/17/2012 22:57:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profiles](
	[UserId] [uniqueidentifier] NOT NULL,
	[PropertyNames] [nvarchar](4000) NOT NULL,
	[PropertyValueStrings] [nvarchar](4000) NOT NULL,
	[PropertyValueBinary] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
	[InsertDate] [datetime] NULL,
	[InsertUserID] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyUserID] [uniqueidentifier] NULL,
	[IpAddress] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Plan-Course]    Script Date: 11/17/2012 22:57:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Plan-Course](
	[PlanID] [uniqueidentifier] NOT NULL,
	[CourseID] [uniqueidentifier] NOT NULL,
	[InsertDate] [datetime] NULL,
	[InsertUserID] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyUserID] [uniqueidentifier] NULL,
	[IpAddress] [varchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student-Course]    Script Date: 11/17/2012 22:57:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student-Course](
	[StudentID] [uniqueidentifier] NOT NULL,
	[CourseID] [uniqueidentifier] NOT NULL,
	[InsertDate] [datetime] NULL,
	[InsertUserID] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyUserID] [uniqueidentifier] NULL,
	[IpAddress] [varchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Score]    Script Date: 11/17/2012 22:57:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Score](
	[ScoreID] [uniqueidentifier] NOT NULL,
	[CourseID] [uniqueidentifier] NOT NULL,
	[StudentID] [uniqueidentifier] NULL,
	[Result] [varchar](50) NULL,
	[InsertDate] [datetime] NULL,
	[InsertUserID] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyUserID] [uniqueidentifier] NULL,
	[IpAddress] [varchar](200) NULL,
 CONSTRAINT [PK_Score] PRIMARY KEY CLUSTERED 
(
	[ScoreID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Record]    Script Date: 11/17/2012 22:57:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Record](
	[RecordID] [uniqueidentifier] NOT NULL,
	[ScoreID] [uniqueidentifier] NOT NULL,
	[InsertDate] [datetime] NULL,
	[InsertUserID] [uniqueidentifier] NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyUserID] [uniqueidentifier] NULL,
	[IpAddress] [varchar](200) NULL,
 CONSTRAINT [PK_Record] PRIMARY KEY CLUSTERED 
(
	[RecordID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [UserApplication]    Script Date: 11/17/2012 22:57:12 ******/
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [UserApplication] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [UserApplication]
GO
/****** Object:  ForeignKey [FK_Scheme_Type]    Script Date: 11/17/2012 22:57:12 ******/
ALTER TABLE [dbo].[Scheme]  WITH CHECK ADD  CONSTRAINT [FK_Scheme_Type] FOREIGN KEY([TypeID])
REFERENCES [dbo].[Type] ([TypeID])
GO
ALTER TABLE [dbo].[Scheme] CHECK CONSTRAINT [FK_Scheme_Type]
GO
/****** Object:  ForeignKey [RoleApplication]    Script Date: 11/17/2012 22:57:12 ******/
ALTER TABLE [dbo].[Roles]  WITH CHECK ADD  CONSTRAINT [RoleApplication] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[Roles] CHECK CONSTRAINT [RoleApplication]
GO
/****** Object:  ForeignKey [FK_Course_Classroom]    Script Date: 11/17/2012 22:57:12 ******/
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_Classroom] FOREIGN KEY([ClassroomID])
REFERENCES [dbo].[Classroom] ([ClassroomID])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_Classroom]
GO
/****** Object:  ForeignKey [FK_Course_Requirement]    Script Date: 11/17/2012 22:57:12 ******/
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_Requirement] FOREIGN KEY([RequirementID])
REFERENCES [dbo].[Requirement] ([RequirementID])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_Requirement]
GO
/****** Object:  ForeignKey [FK_Plan_Location]    Script Date: 11/17/2012 22:57:12 ******/
ALTER TABLE [dbo].[Plan]  WITH CHECK ADD  CONSTRAINT [FK_Plan_Location] FOREIGN KEY([LocationID])
REFERENCES [dbo].[Location] ([LocationID])
GO
ALTER TABLE [dbo].[Plan] CHECK CONSTRAINT [FK_Plan_Location]
GO
/****** Object:  ForeignKey [MembershipApplication]    Script Date: 11/17/2012 22:57:12 ******/
ALTER TABLE [dbo].[Memberships]  WITH CHECK ADD  CONSTRAINT [MembershipApplication] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[Memberships] CHECK CONSTRAINT [MembershipApplication]
GO
/****** Object:  ForeignKey [MembershipUser]    Script Date: 11/17/2012 22:57:12 ******/
ALTER TABLE [dbo].[Memberships]  WITH CHECK ADD  CONSTRAINT [MembershipUser] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Memberships] CHECK CONSTRAINT [MembershipUser]
GO
/****** Object:  ForeignKey [FK_Enrollment_Plan]    Script Date: 11/17/2012 22:57:12 ******/
ALTER TABLE [dbo].[Enrollment]  WITH CHECK ADD  CONSTRAINT [FK_Enrollment_Plan] FOREIGN KEY([PlanID])
REFERENCES [dbo].[Plan] ([PlanID])
GO
ALTER TABLE [dbo].[Enrollment] CHECK CONSTRAINT [FK_Enrollment_Plan]
GO
/****** Object:  ForeignKey [FK_Scheme-Requirement_Requirement]    Script Date: 11/17/2012 22:57:12 ******/
ALTER TABLE [dbo].[Scheme-Requirement]  WITH CHECK ADD  CONSTRAINT [FK_Scheme-Requirement_Requirement] FOREIGN KEY([RequirementID])
REFERENCES [dbo].[Requirement] ([RequirementID])
GO
ALTER TABLE [dbo].[Scheme-Requirement] CHECK CONSTRAINT [FK_Scheme-Requirement_Requirement]
GO
/****** Object:  ForeignKey [FK_Scheme-Requirement_Scheme]    Script Date: 11/17/2012 22:57:12 ******/
ALTER TABLE [dbo].[Scheme-Requirement]  WITH CHECK ADD  CONSTRAINT [FK_Scheme-Requirement_Scheme] FOREIGN KEY([SchemeID])
REFERENCES [dbo].[Scheme] ([SchemeID])
GO
ALTER TABLE [dbo].[Scheme-Requirement] CHECK CONSTRAINT [FK_Scheme-Requirement_Scheme]
GO
/****** Object:  ForeignKey [FK_Scheme-Plan_Plan]    Script Date: 11/17/2012 22:57:12 ******/
ALTER TABLE [dbo].[Scheme-Plan]  WITH CHECK ADD  CONSTRAINT [FK_Scheme-Plan_Plan] FOREIGN KEY([PlanID])
REFERENCES [dbo].[Plan] ([PlanID])
GO
ALTER TABLE [dbo].[Scheme-Plan] CHECK CONSTRAINT [FK_Scheme-Plan_Plan]
GO
/****** Object:  ForeignKey [FK_Scheme-Plan_Scheme]    Script Date: 11/17/2012 22:57:12 ******/
ALTER TABLE [dbo].[Scheme-Plan]  WITH CHECK ADD  CONSTRAINT [FK_Scheme-Plan_Scheme] FOREIGN KEY([SchemeID])
REFERENCES [dbo].[Scheme] ([SchemeID])
GO
ALTER TABLE [dbo].[Scheme-Plan] CHECK CONSTRAINT [FK_Scheme-Plan_Scheme]
GO
/****** Object:  ForeignKey [FK_Student_Type]    Script Date: 11/17/2012 22:57:12 ******/
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Type] FOREIGN KEY([IdentificationTypeID])
REFERENCES [dbo].[Type] ([TypeID])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Type]
GO
/****** Object:  ForeignKey [FK_Student_Users]    Script Date: 11/17/2012 22:57:12 ******/
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Users]
GO
/****** Object:  ForeignKey [UsersInRoleRole]    Script Date: 11/17/2012 22:57:12 ******/
ALTER TABLE [dbo].[UsersInRoles]  WITH CHECK ADD  CONSTRAINT [UsersInRoleRole] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([RoleId])
GO
ALTER TABLE [dbo].[UsersInRoles] CHECK CONSTRAINT [UsersInRoleRole]
GO
/****** Object:  ForeignKey [UsersInRoleUser]    Script Date: 11/17/2012 22:57:12 ******/
ALTER TABLE [dbo].[UsersInRoles]  WITH CHECK ADD  CONSTRAINT [UsersInRoleUser] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[UsersInRoles] CHECK CONSTRAINT [UsersInRoleUser]
GO
/****** Object:  ForeignKey [FK_School-Scheme_Scheme]    Script Date: 11/17/2012 22:57:12 ******/
ALTER TABLE [dbo].[School-Scheme]  WITH CHECK ADD  CONSTRAINT [FK_School-Scheme_Scheme] FOREIGN KEY([SchemeID])
REFERENCES [dbo].[Scheme] ([SchemeID])
GO
ALTER TABLE [dbo].[School-Scheme] CHECK CONSTRAINT [FK_School-Scheme_Scheme]
GO
/****** Object:  ForeignKey [FK_School-Scheme_School]    Script Date: 11/17/2012 22:57:12 ******/
ALTER TABLE [dbo].[School-Scheme]  WITH CHECK ADD  CONSTRAINT [FK_School-Scheme_School] FOREIGN KEY([SchoolID])
REFERENCES [dbo].[School] ([SchoolID])
GO
ALTER TABLE [dbo].[School-Scheme] CHECK CONSTRAINT [FK_School-Scheme_School]
GO
/****** Object:  ForeignKey [UserProfile]    Script Date: 11/17/2012 22:57:12 ******/
ALTER TABLE [dbo].[Profiles]  WITH CHECK ADD  CONSTRAINT [UserProfile] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Profiles] CHECK CONSTRAINT [UserProfile]
GO
/****** Object:  ForeignKey [FK_Plan-Course_Course]    Script Date: 11/17/2012 22:57:12 ******/
ALTER TABLE [dbo].[Plan-Course]  WITH CHECK ADD  CONSTRAINT [FK_Plan-Course_Course] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Course] ([CourseID])
GO
ALTER TABLE [dbo].[Plan-Course] CHECK CONSTRAINT [FK_Plan-Course_Course]
GO
/****** Object:  ForeignKey [FK_Plan-Course_Plan]    Script Date: 11/17/2012 22:57:12 ******/
ALTER TABLE [dbo].[Plan-Course]  WITH CHECK ADD  CONSTRAINT [FK_Plan-Course_Plan] FOREIGN KEY([PlanID])
REFERENCES [dbo].[Plan] ([PlanID])
GO
ALTER TABLE [dbo].[Plan-Course] CHECK CONSTRAINT [FK_Plan-Course_Plan]
GO
/****** Object:  ForeignKey [FK_Student-Course_Course]    Script Date: 11/17/2012 22:57:12 ******/
ALTER TABLE [dbo].[Student-Course]  WITH CHECK ADD  CONSTRAINT [FK_Student-Course_Course] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Course] ([CourseID])
GO
ALTER TABLE [dbo].[Student-Course] CHECK CONSTRAINT [FK_Student-Course_Course]
GO
/****** Object:  ForeignKey [FK_Student-Course_Student]    Script Date: 11/17/2012 22:57:12 ******/
ALTER TABLE [dbo].[Student-Course]  WITH CHECK ADD  CONSTRAINT [FK_Student-Course_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
GO
ALTER TABLE [dbo].[Student-Course] CHECK CONSTRAINT [FK_Student-Course_Student]
GO
/****** Object:  ForeignKey [FK_Score_Course]    Script Date: 11/17/2012 22:57:12 ******/
ALTER TABLE [dbo].[Score]  WITH CHECK ADD  CONSTRAINT [FK_Score_Course] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Course] ([CourseID])
GO
ALTER TABLE [dbo].[Score] CHECK CONSTRAINT [FK_Score_Course]
GO
/****** Object:  ForeignKey [FK_Score_Student]    Script Date: 11/17/2012 22:57:12 ******/
ALTER TABLE [dbo].[Score]  WITH CHECK ADD  CONSTRAINT [FK_Score_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
GO
ALTER TABLE [dbo].[Score] CHECK CONSTRAINT [FK_Score_Student]
GO
/****** Object:  ForeignKey [FK_Record_Score]    Script Date: 11/17/2012 22:57:12 ******/
ALTER TABLE [dbo].[Record]  WITH CHECK ADD  CONSTRAINT [FK_Record_Score] FOREIGN KEY([ScoreID])
REFERENCES [dbo].[Score] ([ScoreID])
GO
ALTER TABLE [dbo].[Record] CHECK CONSTRAINT [FK_Record_Score]
GO
