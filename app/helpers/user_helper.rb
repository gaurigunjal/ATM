module UserHelper
    def collection_has_remark?(collection)
        collection.each do |record|
            if record.remark.preset?
                return true
            end
        end
    end
end