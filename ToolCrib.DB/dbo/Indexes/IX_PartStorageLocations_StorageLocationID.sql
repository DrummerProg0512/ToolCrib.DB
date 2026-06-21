-- Supporting index for FK: FK_PartStorageLocations_StorageLocations
-- Improves storage location inventory lookups
CREATE NONCLUSTERED INDEX [IX_PartStorageLocations_StorageLocationID]
	ON [dbo].[PartStorageLocations] ([StorageLocationID] ASC);

GO
