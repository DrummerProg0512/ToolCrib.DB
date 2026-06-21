-- Supporting index for FK: FK_AreaLocationRelations_AreaLocations1 (Child)
-- Improves hierarchical traversal and child location lookups
CREATE NONCLUSTERED INDEX [IX_AreaLocationRelations_Child]
	ON [dbo].[AreaLocationRelations] ([AreaLocationChildID] ASC);

GO
