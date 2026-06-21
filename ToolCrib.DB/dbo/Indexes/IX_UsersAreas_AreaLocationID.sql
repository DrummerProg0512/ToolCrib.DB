-- Supporting index for FK: FK_UsersAreas_AreaLocations
-- Improves area access lookups by user
CREATE NONCLUSTERED INDEX [IX_UsersAreas_AreaLocationID]
	ON [dbo].[UsersAreas] ([AreaLocationID] ASC);

GO
