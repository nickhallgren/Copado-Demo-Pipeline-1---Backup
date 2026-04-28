/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class FullAccount {
    global String account_id;
    global String country;
    global String email;
    global String locale;
    global Dropbox_for_SF.FullAccount.Name name;
    global String referral_link;
    global Dropbox_for_SF.RootInfo root_info;
    global Dropbox_for_SF.FullAccount.Team team;
    global String team_member_id;
    global FullAccount() {

    }
global class Name {
    global String abbreviated_name;
    global String display_name;
    global String familiar_name;
    global String given_name;
    global String surname;
    global Name() {

    }
}
global class Team {
    global String id {
        get;
        set;
    }
    global String name {
        get;
        set;
    }
    global Team() {

    }
}
}
