-- Supporting index for FK: FK_PartsItems_Users
-- Improves user audit tracking and change history queries
CREATE NONCLUSTERED INDEX [IX_PartsItems_UpdatedBy]
	ON [dbo].[PartsItems] ([UpdatedBy] ASC);

GO
