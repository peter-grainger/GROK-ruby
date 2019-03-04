def unique(array)
  array.select { |bm| bm.role_for_area(:access_compliance_services) == :full_access }
       .inject([]) { |clients, bm| clients + bm.linked_clients }
       .uniq
end
