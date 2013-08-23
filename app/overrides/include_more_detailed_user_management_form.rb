Deface::Override.new(virtual_path: 'spree/users/show',
                     name: 'include_more_detailed_user_management_form',
                     insert_after: '#user-info',
                     partial: 'spree/shared/manage'
                    )
