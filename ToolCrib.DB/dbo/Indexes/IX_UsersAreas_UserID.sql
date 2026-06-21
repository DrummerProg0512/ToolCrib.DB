-- Supporting index for FK: FK_UsersAreas_Users
-- Improves user area assignments lookups and permission checks
CREATE NONCLUSTERED INDEX [IX_UsersAreas_UserID]
	ON [dbo].[UsersAreas] ([UserID] ASC);

GO
