-- Supporting index for FK: FK_PartAssets_Users
-- Improves user audit trail lookups and referential integrity checks
CREATE NONCLUSTERED INDEX [IX_PartAssets_UpdatedBy]
	ON [dbo].[PartAssets] ([UpdatedBy] ASC);

GO
