SELECT [dbo].[OwnerProperty].[OwnerId], [dbo].[OwnerProperty].[PropertyId], 
[dbo].[Property].[Name] AS PropertyName, [dbo].[PropertyHomeValue].Value AS HomeValue
FROM [dbo].[OwnerProperty]
INNER JOIN [dbo].[Property]
ON [dbo].[OwnerProperty].PropertyId = [dbo].[Property].[Id]
INNER JOIN [dbo].[PropertyHomeValue]
ON [dbo].[OwnerProperty].PropertyId = [dbo].[PropertyHomeValue].PropertyId
WHERE [dbo].[OwnerProperty].OwnerId = 1426