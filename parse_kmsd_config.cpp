
    struct User {
        std::string username;
        std::size_t pwlen;
        std::vector<std::string> roles;
    };

    struct Password {
        std::string type;
        std::vector<User> users;
    };

    for (const auto& p_password: pos.get_child("passwords")) {
        const auto& p_type = p_password.second.get_child("type");
        std::cerr << "type:" << p_type.data() << std::endl;

        const auto& p_users_array = p_password.second.get_child("users");

        for (const auto& p_item: p_users_array) {
            const auto& p_user = p_item.second;

            for (const auto& p_subtree: p_user) {
                const std::string& username = p_subtree.first.data();
                const auto& p_userDetails = p_subtree.second;

                const std::string& pwlen = p_userDetails.get_child("pwlen").data();

                std::cerr << "username:" << username << " pwlen:" << pwlen << std::endl;

                const auto& p_roles = p_userDetails.get_child("roles");

                for (const auto& p_role: p_roles) {
                    std::cerr << "role:" << p_role.second.data() << std::endl;
                }
            }
        }
    }//end first for
