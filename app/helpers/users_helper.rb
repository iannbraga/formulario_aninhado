module UsersHelper
    def ativo?(ativo)
        if ativo 
            'text-success'
        else
            'text-danger'
        end
    end
end
