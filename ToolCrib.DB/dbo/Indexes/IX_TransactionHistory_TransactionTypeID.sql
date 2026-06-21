-- Supporting index for FK: FK_TransactionHistory_TransactionStatus (NEW)
-- Improves transaction type lookups and transaction filtering
CREATE NONCLUSTERED INDEX [IX_TransactionHistory_TransactionTypeID]
	ON [dbo].[TransactionHistory] ([TransactionTypeID] ASC);

GO
