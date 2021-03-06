USE [turtle_tippers]
GO
/****** Object:  Table [dbo].[cards]    Script Date: 12/22/2016 9:20:07 AM ******/
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
/****** Object:  Table [dbo].[decks]    Script Date: 12/22/2016 9:20:07 AM ******/
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
/****** Object:  Table [dbo].[players]    Script Date: 12/22/2016 9:20:07 AM ******/
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

INSERT [dbo].[cards] ([id], [name], [image], [flavor_text], [attack], [defense], [revive], [tier]) VALUES (1, N'squirrel', N'/../Content/img/squirrel.png', N'I may be small, but I''m wiry!', 1, 1, 0, 2)
INSERT [dbo].[cards] ([id], [name], [image], [flavor_text], [attack], [defense], [revive], [tier]) VALUES (2, N'deer', N'/../Content/img/deer.png', N'...', 2, 1, 0, 2)
INSERT [dbo].[cards] ([id], [name], [image], [flavor_text], [attack], [defense], [revive], [tier]) VALUES (3, N'bear', N'/../Content/img/bear.png', N'Mama Bear loves her turtles!', 2, 4, 0, 1)
INSERT [dbo].[cards] ([id], [name], [image], [flavor_text], [attack], [defense], [revive], [tier]) VALUES (4, N'dung beetle', N'/../Content/img/dungbeetle.gif', N'Smells bad to other animals, but not to turtles.', 1, 1, 1, 2)
INSERT [dbo].[cards] ([id], [name], [image], [flavor_text], [attack], [defense], [revive], [tier]) VALUES (5, N'honey badger', N'/../Content/img/honey-badger.png', N'Honey badger don''t care.', 4, 1, 0, 1)
INSERT [dbo].[cards] ([id], [name], [image], [flavor_text], [attack], [defense], [revive], [tier]) VALUES (6, N'snake', N'/../Content/img/snake.png', N'Don''t tread on me.', 1, 2, 0, 2)
INSERT [dbo].[cards] ([id], [name], [image], [flavor_text], [attack], [defense], [revive], [tier]) VALUES (7, N'sloth', N'/../Content/img/sloth.png', N'Zzzz... zzzz...', 0, 3, 0, 2)
INSERT [dbo].[cards] ([id], [name], [image], [flavor_text], [attack], [defense], [revive], [tier]) VALUES (8, N'fox', N'/../Content/img/fox.png', N'Crazy like a fox!', 2, 3, 0, 2)
INSERT [dbo].[cards] ([id], [name], [image], [flavor_text], [attack], [defense], [revive], [tier]) VALUES (9, N'duck', N'/../Content/img/duck.png', N'Quack, quack!', 1, 1, 0, 2)
INSERT [dbo].[cards] ([id], [name], [image], [flavor_text], [attack], [defense], [revive], [tier]) VALUES (10, N'cougar', N'/../Content/img/cougar.png', N'Silently deadly.', 4, 2, 0, 1)
INSERT [dbo].[cards] ([id], [name], [image], [flavor_text], [attack], [defense], [revive], [tier]) VALUES (11, N'pineapple', N'/../Content/img/pineapple.png', N'So juicy sweet! Revives one turtle.', 0, 0, 1, 2)
INSERT [dbo].[cards] ([id], [name], [image], [flavor_text], [attack], [defense], [revive], [tier]) VALUES (12, N'strawberry', N'/../Content/img/strawberry.png', N'The seeds will get stuck in your teeth. Revives one turtle.', 0, 0, 1, 2)
INSERT [dbo].[cards] ([id], [name], [image], [flavor_text], [attack], [defense], [revive], [tier]) VALUES (13, N'lettuce', N'/../Content/img/lettuce.png', N'Nom, nom, nom! Revives two turtles.', 0, 0, 2, 2)
INSERT [dbo].[cards] ([id], [name], [image], [flavor_text], [attack], [defense], [revive], [tier]) VALUES (14, N'blueberry', N'/../Content/img/blueberry.png', N'Little blue bundles of joy! Revives one turtle.', 0, 0, 1, 2)
INSERT [dbo].[cards] ([id], [name], [image], [flavor_text], [attack], [defense], [revive], [tier]) VALUES (15, N'multi-vitamin ', N'/../Content/img/vitamin.png', N'Eat it!! Revives three turtles.', 0, 0, 3, 1)
INSERT [dbo].[cards] ([id], [name], [image], [flavor_text], [attack], [defense], [revive], [tier]) VALUES (16, N'hedgehog', N'/../Content/img.hedgehog.png', N'Gotta go fast!', 6, 6, 0, 1)
INSERT [dbo].[cards] ([id], [name], [image], [flavor_text], [attack], [defense], [revive], [tier]) VALUES (17, N'frog', N'/../Content/img/frog.png', N'Stand back or I''ll slime you!', 1, 1, 0, 2)
INSERT [dbo].[cards] ([id], [name], [image], [flavor_text], [attack], [defense], [revive], [tier]) VALUES (18, N'snail', N'/../Content/img/snail.png', N'Home is where the goo is.', 1, 1, 1, 2)
INSERT [dbo].[cards] ([id], [name], [image], [flavor_text], [attack], [defense], [revive], [tier]) VALUES (19, N'bat', N'/../Content/img/bat.png', N'Bats! Bugs of the night!', 1, 3, 0, 2)
INSERT [dbo].[cards] ([id], [name], [image], [flavor_text], [attack], [defense], [revive], [tier]) VALUES (20, N'rabbit', N'/../Content/img/rabbit.png', N'Wild, but not wascawy. ', 1, 1, 0, 2)
SET IDENTITY_INSERT [dbo].[cards] OFF
