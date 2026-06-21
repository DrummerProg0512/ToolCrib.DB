-- Supporting index for FK: FK_TransactionHistory_Users
-- Improves user transaction history lookups and reporting
CREATE NONCLUSTERED INDEX [IX_TransactionHistory_RequestedBy]
	ON [dbo].[TransactionHistory] ([RequestedBy] ASC);

GO
