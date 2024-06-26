USE [football]
GO
SET IDENTITY_INSERT [Championnats].[Championnat] ON 

INSERT [Championnats].[Championnat] ([ChampionnatID], [Nom], [Niveau], [Format]) VALUES (1, N'Premier League', N'Élite', N'Ligue')
INSERT [Championnats].[Championnat] ([ChampionnatID], [Nom], [Niveau], [Format]) VALUES (2, N'La Liga', N'Élite', N'Ligue')
INSERT [Championnats].[Championnat] ([ChampionnatID], [Nom], [Niveau], [Format]) VALUES (3, N'Serie A', N'Élite', N'Ligue')
INSERT [Championnats].[Championnat] ([ChampionnatID], [Nom], [Niveau], [Format]) VALUES (4, N'Bundesliga', N'Élite', N'Ligue')
INSERT [Championnats].[Championnat] ([ChampionnatID], [Nom], [Niveau], [Format]) VALUES (5, N'Ligue 1', N'Élite', N'Ligue')
SET IDENTITY_INSERT [Championnats].[Championnat] OFF
GO
SET IDENTITY_INSERT [Equipes].[Equipe] ON 

INSERT [Equipes].[Equipe] ([EquipeID], [Nom], [AnneeDeFondation], [Ville], [ChampionnatID]) VALUES (1, N'Manchester United', 1878, N'Manchester', 1)
INSERT [Equipes].[Equipe] ([EquipeID], [Nom], [AnneeDeFondation], [Ville], [ChampionnatID]) VALUES (2, N'Real Madrid', 1902, N'Madrid', 2)
INSERT [Equipes].[Equipe] ([EquipeID], [Nom], [AnneeDeFondation], [Ville], [ChampionnatID]) VALUES (3, N'Bayern Munich', 1900, N'Munich', 3)
INSERT [Equipes].[Equipe] ([EquipeID], [Nom], [AnneeDeFondation], [Ville], [ChampionnatID]) VALUES (4, N'AC Milan', 1899, N'Milan', 4)
INSERT [Equipes].[Equipe] ([EquipeID], [Nom], [AnneeDeFondation], [Ville], [ChampionnatID]) VALUES (5, N'Paris Saint-Germain', 1970, N'Paris', 5)
INSERT [Equipes].[Equipe] ([EquipeID], [Nom], [AnneeDeFondation], [Ville], [ChampionnatID]) VALUES (6, N'Chelsea', 1905, N'London', 1)
INSERT [Equipes].[Equipe] ([EquipeID], [Nom], [AnneeDeFondation], [Ville], [ChampionnatID]) VALUES (7, N'FC Barcelona', 1899, N'Barcelona', 2)
INSERT [Equipes].[Equipe] ([EquipeID], [Nom], [AnneeDeFondation], [Ville], [ChampionnatID]) VALUES (8, N'Borussia Dortmund', 1909, N'Dortmund', 3)
INSERT [Equipes].[Equipe] ([EquipeID], [Nom], [AnneeDeFondation], [Ville], [ChampionnatID]) VALUES (9, N'AS Roma', 1927, N'Rome', 4)
INSERT [Equipes].[Equipe] ([EquipeID], [Nom], [AnneeDeFondation], [Ville], [ChampionnatID]) VALUES (10, N'Olympique de Marseille', 1899, N'Marseille', 5)
INSERT [Equipes].[Equipe] ([EquipeID], [Nom], [AnneeDeFondation], [Ville], [ChampionnatID]) VALUES (11, N'Liverpool FC', 1892, N'Liverpool', 1)
INSERT [Equipes].[Equipe] ([EquipeID], [Nom], [AnneeDeFondation], [Ville], [ChampionnatID]) VALUES (12, N'Atletico Madrid', 1903, N'Madrid', 2)
INSERT [Equipes].[Equipe] ([EquipeID], [Nom], [AnneeDeFondation], [Ville], [ChampionnatID]) VALUES (13, N'Juventus FC', 1897, N'Turin', 3)
INSERT [Equipes].[Equipe] ([EquipeID], [Nom], [AnneeDeFondation], [Ville], [ChampionnatID]) VALUES (14, N'Olympique Lyonnais', 1950, N'Lyon', 4)
INSERT [Equipes].[Equipe] ([EquipeID], [Nom], [AnneeDeFondation], [Ville], [ChampionnatID]) VALUES (15, N'FC Schalke 04', 1904, N'Gelsenkirchen', 5)
SET IDENTITY_INSERT [Equipes].[Equipe] OFF
GO
SET IDENTITY_INSERT [Championnats].[Saison] ON 

INSERT [Championnats].[Saison] ([SaisonID], [Annee], [Duree], [ChampionnatID]) VALUES (1, 2023, 10, 1)
INSERT [Championnats].[Saison] ([SaisonID], [Annee], [Duree], [ChampionnatID]) VALUES (2, 2023, 10, 2)
INSERT [Championnats].[Saison] ([SaisonID], [Annee], [Duree], [ChampionnatID]) VALUES (3, 2023, 10, 3)
INSERT [Championnats].[Saison] ([SaisonID], [Annee], [Duree], [ChampionnatID]) VALUES (4, 2023, 10, 4)
INSERT [Championnats].[Saison] ([SaisonID], [Annee], [Duree], [ChampionnatID]) VALUES (5, 2023, 10, 5)
INSERT [Championnats].[Saison] ([SaisonID], [Annee], [Duree], [ChampionnatID]) VALUES (6, 2024, 10, 1)
INSERT [Championnats].[Saison] ([SaisonID], [Annee], [Duree], [ChampionnatID]) VALUES (7, 2024, 10, 2)
INSERT [Championnats].[Saison] ([SaisonID], [Annee], [Duree], [ChampionnatID]) VALUES (8, 2024, 10, 3)
INSERT [Championnats].[Saison] ([SaisonID], [Annee], [Duree], [ChampionnatID]) VALUES (9, 2024, 10, 4)
INSERT [Championnats].[Saison] ([SaisonID], [Annee], [Duree], [ChampionnatID]) VALUES (10, 2024, 10, 5)
INSERT [Championnats].[Saison] ([SaisonID], [Annee], [Duree], [ChampionnatID]) VALUES (11, 2025, 10, 1)
INSERT [Championnats].[Saison] ([SaisonID], [Annee], [Duree], [ChampionnatID]) VALUES (12, 2025, 10, 2)
INSERT [Championnats].[Saison] ([SaisonID], [Annee], [Duree], [ChampionnatID]) VALUES (13, 2025, 10, 3)
INSERT [Championnats].[Saison] ([SaisonID], [Annee], [Duree], [ChampionnatID]) VALUES (14, 2025, 10, 4)
INSERT [Championnats].[Saison] ([SaisonID], [Annee], [Duree], [ChampionnatID]) VALUES (15, 2025, 10, 5)
SET IDENTITY_INSERT [Championnats].[Saison] OFF
GO
SET IDENTITY_INSERT [Championnats].[Stade] ON 

INSERT [Championnats].[Stade] ([StadeID], [Nom], [Capacite], [Ville], [AnneeInauguration], [EquipeID]) VALUES (1, N'Old Trafford', 74000, N'Manchester', 1910, 1)
INSERT [Championnats].[Stade] ([StadeID], [Nom], [Capacite], [Ville], [AnneeInauguration], [EquipeID]) VALUES (2, N'Santiago Bernabeu', 81044, N'Madrid', 1947, 2)
INSERT [Championnats].[Stade] ([StadeID], [Nom], [Capacite], [Ville], [AnneeInauguration], [EquipeID]) VALUES (3, N'Allianz Arena', 75000, N'Munich', 2005, 3)
INSERT [Championnats].[Stade] ([StadeID], [Nom], [Capacite], [Ville], [AnneeInauguration], [EquipeID]) VALUES (4, N'San Siro', 80018, N'Milan', 1926, 4)
INSERT [Championnats].[Stade] ([StadeID], [Nom], [Capacite], [Ville], [AnneeInauguration], [EquipeID]) VALUES (5, N'Parc des Princes', 48527, N'Paris', 1972, 5)
INSERT [Championnats].[Stade] ([StadeID], [Nom], [Capacite], [Ville], [AnneeInauguration], [EquipeID]) VALUES (6, N'Stamford Bridge', 40834, N'London', 1877, 1)
INSERT [Championnats].[Stade] ([StadeID], [Nom], [Capacite], [Ville], [AnneeInauguration], [EquipeID]) VALUES (7, N'Camp Nou', 99354, N'Barcelona', 1957, 2)
INSERT [Championnats].[Stade] ([StadeID], [Nom], [Capacite], [Ville], [AnneeInauguration], [EquipeID]) VALUES (8, N'Signal Iduna Park', 81359, N'Dortmund', 1974, 3)
INSERT [Championnats].[Stade] ([StadeID], [Nom], [Capacite], [Ville], [AnneeInauguration], [EquipeID]) VALUES (9, N'Stadio Olimpico', 72698, N'Rome', 1937, 4)
INSERT [Championnats].[Stade] ([StadeID], [Nom], [Capacite], [Ville], [AnneeInauguration], [EquipeID]) VALUES (10, N'Stade Vélodrome', 67394, N'Marseille', 1937, 5)
INSERT [Championnats].[Stade] ([StadeID], [Nom], [Capacite], [Ville], [AnneeInauguration], [EquipeID]) VALUES (11, N'Anfield', 53394, N'Liverpool', 1884, 1)
INSERT [Championnats].[Stade] ([StadeID], [Nom], [Capacite], [Ville], [AnneeInauguration], [EquipeID]) VALUES (12, N'Estadio Wanda Metropolitano', 68456, N'Madrid', 1994, 2)
INSERT [Championnats].[Stade] ([StadeID], [Nom], [Capacite], [Ville], [AnneeInauguration], [EquipeID]) VALUES (13, N'Allianz Stadium', 41400, N'Turin', 2011, 3)
INSERT [Championnats].[Stade] ([StadeID], [Nom], [Capacite], [Ville], [AnneeInauguration], [EquipeID]) VALUES (14, N'Parc Olympique Lyonnais', 59186, N'Lyon', 2016, 4)
INSERT [Championnats].[Stade] ([StadeID], [Nom], [Capacite], [Ville], [AnneeInauguration], [EquipeID]) VALUES (15, N'Veltins-Arena', 62271, N'Gelsenkirchen', 2001, 5)
SET IDENTITY_INSERT [Championnats].[Stade] OFF
GO
SET IDENTITY_INSERT [Equipes].[Match] ON 

INSERT [Equipes].[Match] ([MatchID], [Date], [StadeID], [EquipeDomicile], [EquipeExterieure], [EquipeGagnante], [SaisonID]) VALUES (1, CAST(N'2023-01-01' AS Date), 1, 1, 2, 1, 1)
INSERT [Equipes].[Match] ([MatchID], [Date], [StadeID], [EquipeDomicile], [EquipeExterieure], [EquipeGagnante], [SaisonID]) VALUES (2, CAST(N'2023-01-02' AS Date), 2, 2, 3, 3, 1)
INSERT [Equipes].[Match] ([MatchID], [Date], [StadeID], [EquipeDomicile], [EquipeExterieure], [EquipeGagnante], [SaisonID]) VALUES (3, CAST(N'2023-01-03' AS Date), 3, 3, 4, 4, 1)
INSERT [Equipes].[Match] ([MatchID], [Date], [StadeID], [EquipeDomicile], [EquipeExterieure], [EquipeGagnante], [SaisonID]) VALUES (4, CAST(N'2023-01-04' AS Date), 4, 4, 5, 5, 1)
INSERT [Equipes].[Match] ([MatchID], [Date], [StadeID], [EquipeDomicile], [EquipeExterieure], [EquipeGagnante], [SaisonID]) VALUES (5, CAST(N'2023-01-05' AS Date), 5, 5, 1, 1, 1)
INSERT [Equipes].[Match] ([MatchID], [Date], [StadeID], [EquipeDomicile], [EquipeExterieure], [EquipeGagnante], [SaisonID]) VALUES (6, CAST(N'2023-02-01' AS Date), 6, 2, 1, 1, 2)
INSERT [Equipes].[Match] ([MatchID], [Date], [StadeID], [EquipeDomicile], [EquipeExterieure], [EquipeGagnante], [SaisonID]) VALUES (7, CAST(N'2023-02-02' AS Date), 7, 3, 2, 2, 2)
INSERT [Equipes].[Match] ([MatchID], [Date], [StadeID], [EquipeDomicile], [EquipeExterieure], [EquipeGagnante], [SaisonID]) VALUES (8, CAST(N'2023-02-03' AS Date), 8, 4, 3, 3, 2)
INSERT [Equipes].[Match] ([MatchID], [Date], [StadeID], [EquipeDomicile], [EquipeExterieure], [EquipeGagnante], [SaisonID]) VALUES (9, CAST(N'2023-02-04' AS Date), 9, 5, 4, 4, 2)
INSERT [Equipes].[Match] ([MatchID], [Date], [StadeID], [EquipeDomicile], [EquipeExterieure], [EquipeGagnante], [SaisonID]) VALUES (10, CAST(N'2023-02-05' AS Date), 10, 1, 5, 1, 2)
INSERT [Equipes].[Match] ([MatchID], [Date], [StadeID], [EquipeDomicile], [EquipeExterieure], [EquipeGagnante], [SaisonID]) VALUES (11, CAST(N'2023-03-01' AS Date), 11, 3, 1, 3, 3)
INSERT [Equipes].[Match] ([MatchID], [Date], [StadeID], [EquipeDomicile], [EquipeExterieure], [EquipeGagnante], [SaisonID]) VALUES (12, CAST(N'2023-03-02' AS Date), 12, 4, 2, 4, 3)
INSERT [Equipes].[Match] ([MatchID], [Date], [StadeID], [EquipeDomicile], [EquipeExterieure], [EquipeGagnante], [SaisonID]) VALUES (13, CAST(N'2023-03-03' AS Date), 13, 5, 3, 5, 3)
INSERT [Equipes].[Match] ([MatchID], [Date], [StadeID], [EquipeDomicile], [EquipeExterieure], [EquipeGagnante], [SaisonID]) VALUES (14, CAST(N'2023-03-04' AS Date), 14, 1, 4, 1, 3)
INSERT [Equipes].[Match] ([MatchID], [Date], [StadeID], [EquipeDomicile], [EquipeExterieure], [EquipeGagnante], [SaisonID]) VALUES (15, CAST(N'2023-03-05' AS Date), 15, 2, 5, 2, 3)
SET IDENTITY_INSERT [Equipes].[Match] OFF
GO
SET IDENTITY_INSERT [Equipes].[Joueur] ON 

INSERT [Equipes].[Joueur] ([JoueurID], [Nom], [DateNaissance], [Position], [Nationalite], [EquipeID]) VALUES (1, N'Kylian Mbappé', N'1998-12-20', N'Attaquant', N'France', 5)
INSERT [Equipes].[Joueur] ([JoueurID], [Nom], [DateNaissance], [Position], [Nationalite], [EquipeID]) VALUES (2, N'Kevin De Bruyne', N'1991-06-28', N'Milieu de terrain', N'Belgique', 1)
INSERT [Equipes].[Joueur] ([JoueurID], [Nom], [DateNaissance], [Position], [Nationalite], [EquipeID]) VALUES (3, N'Virgil van Dijk', N'1991-07-08', N'Défenseur', N'Pays-Bas', 1)
INSERT [Equipes].[Joueur] ([JoueurID], [Nom], [DateNaissance], [Position], [Nationalite], [EquipeID]) VALUES (4, N'Harry Kane', N'1993-07-28', N'Attaquant', N'Angleterre', 1)
INSERT [Equipes].[Joueur] ([JoueurID], [Nom], [DateNaissance], [Position], [Nationalite], [EquipeID]) VALUES (5, N'Mohamed Salah', N'1992-06-15', N'Attaquant', N'Égypte', 1)
INSERT [Equipes].[Joueur] ([JoueurID], [Nom], [DateNaissance], [Position], [Nationalite], [EquipeID]) VALUES (6, N'Gianluigi Donnarumma', N'1999-02-25', N'Gardien de but', N'Italie', 4)
INSERT [Equipes].[Joueur] ([JoueurID], [Nom], [DateNaissance], [Position], [Nationalite], [EquipeID]) VALUES (7, N'Sergio Ramos', N'1986-03-30', N'Défenseur', N'Espagne', 2)
INSERT [Equipes].[Joueur] ([JoueurID], [Nom], [DateNaissance], [Position], [Nationalite], [EquipeID]) VALUES (8, N'Kevin Mbala', N'1994-01-05', N'Milieu de terrain', N'Cameroun', 3)
INSERT [Equipes].[Joueur] ([JoueurID], [Nom], [DateNaissance], [Position], [Nationalite], [EquipeID]) VALUES (9, N'Erling Haaland', N'2000-07-21', N'Attaquant', N'Norvège', 3)
INSERT [Equipes].[Joueur] ([JoueurID], [Nom], [DateNaissance], [Position], [Nationalite], [EquipeID]) VALUES (10, N'Paul Pogba', N'1993-03-15', N'Milieu de terrain', N'France', 2)
INSERT [Equipes].[Joueur] ([JoueurID], [Nom], [DateNaissance], [Position], [Nationalite], [EquipeID]) VALUES (11, N'Sadio Mané', N'1992-04-10', N'Attaquant', N'Sénégal', 4)
INSERT [Equipes].[Joueur] ([JoueurID], [Nom], [DateNaissance], [Position], [Nationalite], [EquipeID]) VALUES (12, N'Alisson Becker', N'1992-10-02', N'Gardien de but', N'Brésil', 2)
INSERT [Equipes].[Joueur] ([JoueurID], [Nom], [DateNaissance], [Position], [Nationalite], [EquipeID]) VALUES (13, N'Luka Modric', N'1985-09-09', N'Milieu de terrain', N'Croatie', 2)
INSERT [Equipes].[Joueur] ([JoueurID], [Nom], [DateNaissance], [Position], [Nationalite], [EquipeID]) VALUES (14, N'Raheem Sterling', N'1994-12-08', N'Attaquant', N'Angleterre', 5)
INSERT [Equipes].[Joueur] ([JoueurID], [Nom], [DateNaissance], [Position], [Nationalite], [EquipeID]) VALUES (15, N'Manuel Neuer', N'1986-03-27', N'Gardien de but', N'Allemagne', 3)
SET IDENTITY_INSERT [Equipes].[Joueur] OFF
GO
SET IDENTITY_INSERT [Equipes].[Trophee] ON 

INSERT [Equipes].[Trophee] ([TropheeID], [Nom], [Annee], [Categorie]) VALUES (1, N'Ballon d''Or', 2021, N'Individuel')
INSERT [Equipes].[Trophee] ([TropheeID], [Nom], [Annee], [Categorie]) VALUES (2, N'Golden Boot', 2021, N'Individuel')
INSERT [Equipes].[Trophee] ([TropheeID], [Nom], [Annee], [Categorie]) VALUES (3, N'Meilleur gardien', 2021, N'Individuel')
INSERT [Equipes].[Trophee] ([TropheeID], [Nom], [Annee], [Categorie]) VALUES (4, N'Meilleur jeune joueur', 2021, N'Individuel')
INSERT [Equipes].[Trophee] ([TropheeID], [Nom], [Annee], [Categorie]) VALUES (5, N'Prix Puskas', 2021, N'Individuel')
INSERT [Equipes].[Trophee] ([TropheeID], [Nom], [Annee], [Categorie]) VALUES (6, N'Champion de la Premier League', 2021, N'Collectif')
INSERT [Equipes].[Trophee] ([TropheeID], [Nom], [Annee], [Categorie]) VALUES (7, N'Vainqueur de la Liga', 2021, N'Collectif')
INSERT [Equipes].[Trophee] ([TropheeID], [Nom], [Annee], [Categorie]) VALUES (8, N'Champion de Bundesliga', 2021, N'Collectif')
INSERT [Equipes].[Trophee] ([TropheeID], [Nom], [Annee], [Categorie]) VALUES (9, N'Vainqueur de la Serie A', 2021, N'Collectif')
INSERT [Equipes].[Trophee] ([TropheeID], [Nom], [Annee], [Categorie]) VALUES (10, N'Champion de la Ligue 1', 2021, N'Collectif')
INSERT [Equipes].[Trophee] ([TropheeID], [Nom], [Annee], [Categorie]) VALUES (11, N'Champion d''Europe', 2021, N'Collectif')
INSERT [Equipes].[Trophee] ([TropheeID], [Nom], [Annee], [Categorie]) VALUES (12, N'Vainqueur de la Ligue des champions', 2021, N'Collectif')
INSERT [Equipes].[Trophee] ([TropheeID], [Nom], [Annee], [Categorie]) VALUES (13, N'Vainqueur de l''Europa League', 2021, N'Collectif')
INSERT [Equipes].[Trophee] ([TropheeID], [Nom], [Annee], [Categorie]) VALUES (14, N'Vainqueur de la Copa America', 2021, N'Collectif')
INSERT [Equipes].[Trophee] ([TropheeID], [Nom], [Annee], [Categorie]) VALUES (15, N'Vainqueur de la Coupe du Monde', 2022, N'Collectif')
SET IDENTITY_INSERT [Equipes].[Trophee] OFF
GO
SET IDENTITY_INSERT [Equipes].[Palmares] ON 

INSERT [Equipes].[Palmares] ([PalmaresID], [TropheeID], [JoueurID]) VALUES (1, 1, 1)
INSERT [Equipes].[Palmares] ([PalmaresID], [TropheeID], [JoueurID]) VALUES (2, 2, 2)
INSERT [Equipes].[Palmares] ([PalmaresID], [TropheeID], [JoueurID]) VALUES (3, 3, 3)
INSERT [Equipes].[Palmares] ([PalmaresID], [TropheeID], [JoueurID]) VALUES (4, 4, 4)
INSERT [Equipes].[Palmares] ([PalmaresID], [TropheeID], [JoueurID]) VALUES (5, 5, 5)
INSERT [Equipes].[Palmares] ([PalmaresID], [TropheeID], [JoueurID]) VALUES (6, 1, 6)
INSERT [Equipes].[Palmares] ([PalmaresID], [TropheeID], [JoueurID]) VALUES (7, 2, 7)
INSERT [Equipes].[Palmares] ([PalmaresID], [TropheeID], [JoueurID]) VALUES (8, 3, 8)
INSERT [Equipes].[Palmares] ([PalmaresID], [TropheeID], [JoueurID]) VALUES (9, 4, 9)
INSERT [Equipes].[Palmares] ([PalmaresID], [TropheeID], [JoueurID]) VALUES (10, 5, 10)
INSERT [Equipes].[Palmares] ([PalmaresID], [TropheeID], [JoueurID]) VALUES (11, 1, 11)
INSERT [Equipes].[Palmares] ([PalmaresID], [TropheeID], [JoueurID]) VALUES (12, 2, 12)
INSERT [Equipes].[Palmares] ([PalmaresID], [TropheeID], [JoueurID]) VALUES (13, 3, 13)
INSERT [Equipes].[Palmares] ([PalmaresID], [TropheeID], [JoueurID]) VALUES (14, 4, 14)
INSERT [Equipes].[Palmares] ([PalmaresID], [TropheeID], [JoueurID]) VALUES (15, 5, 15)
INSERT [Equipes].[Palmares] ([PalmaresID], [TropheeID], [JoueurID]) VALUES (16, 1, 2)
INSERT [Equipes].[Palmares] ([PalmaresID], [TropheeID], [JoueurID]) VALUES (17, 2, 3)
INSERT [Equipes].[Palmares] ([PalmaresID], [TropheeID], [JoueurID]) VALUES (18, 3, 4)
INSERT [Equipes].[Palmares] ([PalmaresID], [TropheeID], [JoueurID]) VALUES (19, 4, 5)
INSERT [Equipes].[Palmares] ([PalmaresID], [TropheeID], [JoueurID]) VALUES (20, 5, 6)
INSERT [Equipes].[Palmares] ([PalmaresID], [TropheeID], [JoueurID]) VALUES (21, 1, 7)
INSERT [Equipes].[Palmares] ([PalmaresID], [TropheeID], [JoueurID]) VALUES (22, 2, 8)
INSERT [Equipes].[Palmares] ([PalmaresID], [TropheeID], [JoueurID]) VALUES (23, 3, 9)
INSERT [Equipes].[Palmares] ([PalmaresID], [TropheeID], [JoueurID]) VALUES (24, 4, 10)
INSERT [Equipes].[Palmares] ([PalmaresID], [TropheeID], [JoueurID]) VALUES (25, 5, 11)
INSERT [Equipes].[Palmares] ([PalmaresID], [TropheeID], [JoueurID]) VALUES (26, 1, 15)
INSERT [Equipes].[Palmares] ([PalmaresID], [TropheeID], [JoueurID]) VALUES (27, 2, 14)
INSERT [Equipes].[Palmares] ([PalmaresID], [TropheeID], [JoueurID]) VALUES (28, 3, 13)
INSERT [Equipes].[Palmares] ([PalmaresID], [TropheeID], [JoueurID]) VALUES (29, 12, 11)
INSERT [Equipes].[Palmares] ([PalmaresID], [TropheeID], [JoueurID]) VALUES (30, 11, 11)
INSERT [Equipes].[Palmares] ([PalmaresID], [TropheeID], [JoueurID]) VALUES (31, 6, 1)
INSERT [Equipes].[Palmares] ([PalmaresID], [TropheeID], [JoueurID]) VALUES (32, 6, 2)
INSERT [Equipes].[Palmares] ([PalmaresID], [TropheeID], [JoueurID]) VALUES (33, 6, 3)
INSERT [Equipes].[Palmares] ([PalmaresID], [TropheeID], [JoueurID]) VALUES (34, 6, 4)
INSERT [Equipes].[Palmares] ([PalmaresID], [TropheeID], [JoueurID]) VALUES (35, 6, 3)
INSERT [Equipes].[Palmares] ([PalmaresID], [TropheeID], [JoueurID]) VALUES (36, 6, 6)
INSERT [Equipes].[Palmares] ([PalmaresID], [TropheeID], [JoueurID]) VALUES (37, 6, 5)
INSERT [Equipes].[Palmares] ([PalmaresID], [TropheeID], [JoueurID]) VALUES (38, 9, 5)
INSERT [Equipes].[Palmares] ([PalmaresID], [TropheeID], [JoueurID]) VALUES (39, 9, 5)
INSERT [Equipes].[Palmares] ([PalmaresID], [TropheeID], [JoueurID]) VALUES (40, 9, 5)
SET IDENTITY_INSERT [Equipes].[Palmares] OFF
GO
