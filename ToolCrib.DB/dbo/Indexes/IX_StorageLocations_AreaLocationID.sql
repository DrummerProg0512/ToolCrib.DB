-- Supporting index for FK: FK_StorageLocations_AreaLocations
-- Improves storage location by area lookups
CREATE NONCLUSTERED INDEX [IX_StorageLocations_AreaLocationID]
	ON [dbo].[StorageLocations] ([AreaLocationID] ASC);

GO
