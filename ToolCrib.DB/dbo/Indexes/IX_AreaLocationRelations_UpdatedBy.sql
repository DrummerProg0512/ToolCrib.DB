-- Supporting index for FK: FK_AreaLocationRelations_Users (NEW)
-- Improves audit tracking for location relationship changes
CREATE NONCLUSTERED INDEX [IX_AreaLocationRelations_UpdatedBy]
	ON [dbo].[AreaLocationRelations] ([UpdatedBy] ASC);

GO
