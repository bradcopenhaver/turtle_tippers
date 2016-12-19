USE [turtle_tippers]
GO
/****** Object:  Table [dbo].[cards]    Script Date: 12/19/2016 11:28:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cards](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
	[image] [varchar](255) NULL,
	[flavor_text] [varchar](255) NULL,
	[attack] [int] NULL,
	[defense] [int] NULL,
	[revive] [int] NULL,
	[tier] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[decks]    Script Date: 12/19/2016 11:28:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[decks](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[card_id] [int] NULL,
	[player_id] [int] NULL,
	[in_hand] [bit] NULL,
	[in_play] [bit] NULL,
	[discard] [bit] NULL,
	[HP] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[players]    Script Date: 12/19/2016 11:28:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[players](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[turtles] [int] NULL,
	[name] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[cards] ON 

INSERT [dbo].[cards] ([id], [name], [image], [flavor_text], [attack], [defense], [revive], [tier]) VALUES (1, N'squirrel', NULL, NULL, 1, 1, 0, 2)
INSERT [dbo].[cards] ([id], [name], [image], [flavor_text], [attack], [defense], [revive], [tier]) VALUES (2, N'deer', NULL, NULL, 2, 1, 0, 2)
INSERT [dbo].[cards] ([id], [name], [image], [flavor_text], [attack], [defense], [revive], [tier]) VALUES (3, N'bear', NULL, NULL, 2, 4, 0, 1)
INSERT [dbo].[cards] ([id], [name], [image], [flavor_text], [attack], [defense], [revive], [tier]) VALUES (4, N'dung beetle', NULL, NULL, 1, 1, 1, 2)
INSERT [dbo].[cards] ([id], [name], [image], [flavor_text], [attack], [defense], [revive], [tier]) VALUES (5, N'honey badger', NULL, NULL, 4, 1, 0, 1)
INSERT [dbo].[cards] ([id], [name], [image], [flavor_text], [attack], [defense], [revive], [tier]) VALUES (6, N'snake', NULL, NULL, 1, 2, 0, 2)
INSERT [dbo].[cards] ([id], [name], [image], [flavor_text], [attack], [defense], [revive], [tier]) VALUES (7, N'sloth', NULL, NULL, 0, 3, 0, 2)
INSERT [dbo].[cards] ([id], [name], [image], [flavor_text], [attack], [defense], [revive], [tier]) VALUES (8, N'fox', NULL, NULL, 2, 3, 0, 2)
INSERT [dbo].[cards] ([id], [name], [image], [flavor_text], [attack], [defense], [revive], [tier]) VALUES (9, N'duck', NULL, NULL, 1, 1, 0, 2)
INSERT [dbo].[cards] ([id], [name], [image], [flavor_text], [attack], [defense], [revive], [tier]) VALUES (10, N'cougar', NULL, NULL, 4, 2, 0, 1)
INSERT [dbo].[cards] ([id], [name], [image], [flavor_text], [attack], [defense], [revive], [tier]) VALUES (11, N'pineapple', NULL, NULL, 0, 0, 1, 2)
INSERT [dbo].[cards] ([id], [name], [image], [flavor_text], [attack], [defense], [revive], [tier]) VALUES (12, N'strawberry', NULL, NULL, 0, 0, 1, 2)
INSERT [dbo].[cards] ([id], [name], [image], [flavor_text], [attack], [defense], [revive], [tier]) VALUES (13, N'lettuce', NULL, NULL, 0, 0, 2, 2)
INSERT [dbo].[cards] ([id], [name], [image], [flavor_text], [attack], [defense], [revive], [tier]) VALUES (14, N'blueberry', NULL, NULL, 0, 0, 1, 2)
INSERT [dbo].[cards] ([id], [name], [image], [flavor_text], [attack], [defense], [revive], [tier]) VALUES (15, N'multi-vitamin ', NULL, NULL, 0, 0, 3, 1)
SET IDENTITY_INSERT [dbo].[cards] OFF
ALTER TABLE [dbo].[decks]  WITH CHECK ADD FOREIGN KEY([card_id])
REFERENCES [dbo].[cards] ([id])
GO
ALTER TABLE [dbo].[decks]  WITH CHECK ADD FOREIGN KEY([player_id])
REFERENCES [dbo].[players] ([id])
GO
