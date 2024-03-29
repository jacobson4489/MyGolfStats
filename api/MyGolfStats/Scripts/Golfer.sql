SET ANSI_NULLS ON
GO

SET QUOTED_IdENTIFIER ON
GO

DROP TABLE IF EXISTS [dbo].[Golfer]
GO

CREATE TABLE [dbo].[Golfer](
	[GolferId] [int] IdENTITY(1,1) NOT NULL,
	[FirstName] [varchar](100) NOT NULL,
	[LastName] [varchar](100) NOT NULL,
	[EmailAddress] [varchar](100) NOT NULL,
	[BirthDate] [datetime] NULL,
	[Nickname] [varchar](100) NULL,
	[Phone] [varchar](20) NULL,
	[Address1] [varchar](100) NULL,
	[Address2] [varchar](100) NULL,
	[City] [varchar](100) NULL,
	[State] [varchar](2) NULL,
	[PostalCode] [varchar](50) NULL,
	[HomeCourseId] [int] NULL,
	[IsActive] [bit] NOT NULL DEFAULT 1,
	PRIMARY KEY CLUSTERED 
	(
		[GolferId] ASC
	) WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
	) ON [PRIMARY]
GO

INSERT INTO Golfer (FirstName, LastName, EmailAddress, BirthDate) VALUES ('Tony', 'Jacobson', 'jacobson4489@gmail.com', '1982-06-26')
INSERT INTO Golfer (FirstName, LastName, EmailAddress, BirthDate) VALUES ('Mark', 'Jacobson', 'none@mail.com', '1982-06-26')
INSERT INTO Golfer (FirstName, LastName, EmailAddress, BirthDate, Nickname) VALUES ('Eric', 'Leonardson', 'none@mail.com', '1979-08-26', 'Big Dog')
INSERT INTO Golfer (FirstName, LastName, EmailAddress) VALUES ('Brad', 'Mikulice', 'none@mail.com')

SELECT *
FROM Golfer