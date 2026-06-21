-- Supporting index for FK: FK_PartStorageLocations_Users
-- Improves inventory update tracking and audit queries
CREATE NONCLUSTERED INDEX [IX_PartStorageLocations_UpdatedBy]
	ON [dbo].[PartStorageLocations] ([UpdatedBy] ASC);

GO
