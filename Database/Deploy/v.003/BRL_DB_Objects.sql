
IF OBJECT_ID('[FK_Enrollment_Plan]', 'F') IS NOT NULL
	ALTER TABLE [dbo].[Enrollment] DROP CONSTRAINT [FK_Enrollment_Plan]
GO


IF OBJECT_ID('dbo.Enrollment', 'U') IS NOT NULL
	DROP TABLE [dbo].[Enrollment]
GO


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
	
 CONSTRAINT [PK_Enrollment] PRIMARY KEY CLUSTERED 
(
	[EnrollmentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO

/****** Object:  ForeignKey [FK_Enrollment_Plan]    Script Date: 12/31/2012 10:54:49 ******/
ALTER TABLE [dbo].[Enrollment]  WITH CHECK ADD  CONSTRAINT [FK_Enrollment_Plan] FOREIGN KEY([PlanID])
REFERENCES [dbo].[Plan] ([PlanID])
GO
ALTER TABLE [dbo].[Enrollment] CHECK CONSTRAINT [FK_Enrollment_Plan]
GO