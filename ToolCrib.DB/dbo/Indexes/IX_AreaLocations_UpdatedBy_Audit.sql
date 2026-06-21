-- Supporting index for FK: FK_AreaLocations_Users
-- Improves audit tracking and user change history queries
CREATE NONCLUSTERED INDEX [IX_AreaLocations_UpdatedBy]
	ON [dbo].[AreaLocations] ([UpdatedBy] ASC);

GO
