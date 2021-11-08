SELECT 
[dbo].[Property].[Name] AS PropertyName, 
[dbo].[PERSON].[FirstName] AS TenantFirstName, 
[dbo].[PERSON].[LastName] AS TenantLastName, 
 [dbo].[PropertyRentalPayment].[Amount] AS RentalPayment,
 [dbo].[TenantPaymentFrequencies].[Name] AS PaymentFrequency
FROM [dbo].[PropertyRentalPayment]
INNER JOIN [dbo].[Property]
ON [dbo].[Property].Id =  [dbo].[PropertyRentalPayment].PropertyId
INNER JOIN [dbo].[TenantProperty]
ON [dbo].[Property].Id= [dbo].[TenantProperty].PropertyId 
INNER JOIN [dbo].[Person]
ON [dbo].[Person].Id = [dbo].[TenantProperty].TenantId
INNER JOIN [dbo].[TenantPaymentFrequencies]
ON [dbo].[TenantPaymentFrequencies].Id = [dbo].[PropertyRentalPayment].FrequencyType
INNER JOIN [dbo].[OwnerProperty]
ON [dbo].[OwnerProperty].PropertyId = [dbo].[Property].[Id]
WHERE [dbo].[OwnerProperty].OwnerId = 1426