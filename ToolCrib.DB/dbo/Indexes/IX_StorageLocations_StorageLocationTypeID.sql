-- Supporting index for FK: FK_StorageLocations_StorageLocationTypes
-- Improves location type filtering and classification queries
CREATE NONCLUSTERED INDEX [IX_StorageLocations_StorageLocationTypeID]
	ON [dbo].[StorageLocations] ([StorageLocationTypeID] ASC);

GO
