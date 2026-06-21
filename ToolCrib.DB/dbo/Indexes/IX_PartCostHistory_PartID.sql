-- Supporting index for FK: FK_PartCostHistory_PartsItems
-- Improves CASCADE operations and join performance
CREATE NONCLUSTERED INDEX [IX_PartCostHistory_PartID]
	ON [dbo].[PartCostHistory] ([PartID] ASC);

GO
