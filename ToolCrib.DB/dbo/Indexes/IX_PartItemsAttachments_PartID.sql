-- Supporting index for FK: FK_PartItemsAttachments_PartsItems
-- Improves part attachment lookups and CASCADE DELETE performance
CREATE NONCLUSTERED INDEX [IX_PartItemsAttachments_PartID]
	ON [dbo].[PartItemsAttachments] ([PartID] ASC);

GO
