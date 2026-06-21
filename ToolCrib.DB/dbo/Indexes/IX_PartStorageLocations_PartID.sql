-- Supporting index for FK: FK_PartStorageLocations_PartsItems
-- Improves part location lookups and inventory distribution queries
CREATE NONCLUSTERED INDEX [IX_PartStorageLocations_PartID]
	ON [dbo].[PartStorageLocations] ([PartID] ASC);

GO
