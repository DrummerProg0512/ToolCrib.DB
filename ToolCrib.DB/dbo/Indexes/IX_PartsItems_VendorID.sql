-- Supporting index for FK: FK_PartsItems_ProvidersVendorsCompanies
-- Improves vendor lookups and supplier inventory queries
CREATE NONCLUSTERED INDEX [IX_PartsItems_VendorID]
	ON [dbo].[PartsItems] ([VendorID] ASC);

GO
