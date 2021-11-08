SELECT a.[PaymentAmount], a.[PaymentFrequencyId], a.[StartDate], a.[EndDate],
a.[Id], a.[Name],
a.PropertyId,a.OwnerId,
CASE
    WHEN a.PaymentFrequencyId = 1 THEN a.PaymentAmount * 52
    WHEN a.PaymentFrequencyId = 2 THEN a.PaymentAmount * 26
	WHEN a.PaymentFrequencyId = 3 THEN a.PaymentAmount * 12
    ELSE NULL
END AS Yield
FROM (SELECT [dbo].[TenantProperty].[PaymentAmount], [dbo].[TenantProperty].[PaymentFrequencyId], [dbo].[TenantProperty].[StartDate], [dbo].[TenantProperty].[EndDate],
[dbo].[TenantPaymentFrequencies].[Id], [dbo].[TenantPaymentFrequencies].[Name],
[dbo].[OwnerProperty].PropertyId,[dbo].[OwnerProperty].OwnerId
FROM [dbo].[TenantProperty]
INNER JOIN [dbo].[TenantPaymentFrequencies]
ON [dbo].[TenantProperty].[PaymentFrequencyId] = [dbo].[TenantPaymentFrequencies].[Id]
INNER JOIN [dbo].[OwnerProperty]
ON [dbo].[TenantProperty].[PropertyId] = [dbo].[OwnerProperty].PropertyId
WHERE [dbo].[OwnerProperty].OwnerId = 1426)a;