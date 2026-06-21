-- Supporting index for FK: FK_AreaLocationRelations_AreaLocations (Parent)
-- Improves hierarchical location navigation and CASCADE DELETE performance
CREATE NONCLUSTERED INDEX [IX_AreaLocationRelations_Parent]
	ON [dbo].[AreaLocationRelations] ([AreaLocationParentID] ASC);

GO
