permissionset 50100 "MyPermissionSet"
{
    Assignable = true;
    IncludedPermissionSets = BaseSystemPermissionSet;
    Permissions =
        tabledata "Rental Sales Header" = RIMD,
        tabledata "Rental Sales Line" = RIMD;
}