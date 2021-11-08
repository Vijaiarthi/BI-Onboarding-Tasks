SELECT [dbo].[OwnerProperty].[OwnerId], [dbo].[OwnerProperty].[PropertyId], [dbo].[Property].[Name] AS PropertyName
FROM [dbo].[OwnerProperty]
INNER JOIN [dbo].[Property]
ON [dbo].[OwnerProperty].PropertyId = [dbo].[Property].[Id]
WHERE [dbo].[OwnerProperty].OwnerId = 1426