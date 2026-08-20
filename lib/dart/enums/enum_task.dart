// =====================================================
// 1. Basic Enum
// =====================================================

// Enum contains a fixed set of values.

enum Status {
  pending,
  approved,
  rejected,
}


// =====================================================
// 2. User Role Enum
// =====================================================

enum UserRole {
  admin,
  teacher,
  student,
}


// =====================================================
// 3. Days Enum
// =====================================================

enum Day {
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
  sunday,
}


// =====================================================
// Main Function
// =====================================================

void main() {

  // ===================================================
  // Example 1 — Creating an Enum Variable
  // ===================================================

  Status status = Status.pending;

  print("Status: $status");


  // ===================================================
  // Changing Enum Value
  // ===================================================

  status = Status.approved;

  print("Updated Status: $status");


  status = Status.rejected;

  print("Final Status: $status");


  print("");


  // ===================================================
  // Example 2 — All Enum Values
  // ===================================================

  print("All Status Values:");

  print(Status.values);


  print("");


  // ===================================================
  // Example 3 — Enum .name
  // ===================================================

  print("Status Name:");

  print(Status.approved.name);


  print("");


  // ===================================================
  // Example 4 — Enum .index
  // ===================================================

  print("Status Index:");

  print(Status.approved.index);


  print("");


  // ===================================================
  // Example 5 — Print Every Enum Value
  // ===================================================

  print("Every Status:");

  for (Status value in Status.values) {

    print(value);
  }


  print("");


  // ===================================================
  // Example 6 — User Role
  // ===================================================

  UserRole role = UserRole.student;

  print("User Role: $role");

  print("Role Name: ${role.name}");

  print("Role Index: ${role.index}");


  print("");


  // ===================================================
  // Example 7 — Day
  // ===================================================

  Day today = Day.wednesday;

  print("Today: $today");

  print("Day Name: ${today.name}");

  print("Day Index: ${today.index}");


  print("");


  // ===================================================
  // Example 8 — Check Enum with if
  // ===================================================

  if (role == UserRole.admin) {

    print("User is Admin");

  } else if (role == UserRole.teacher) {

    print("User is Teacher");

  } else {

    print("User is Student");
  }


  print("");


  // ===================================================
  // Example 9 — Enum with for-in
  // ===================================================

  print("All User Roles:");

  for (UserRole userRole in UserRole.values) {

    print(userRole.name);
  }


  print("");


  // ===================================================
  // Example 10 — Enum with switch
  // ===================================================

  switch (status) {

    case Status.pending:

      print("Order is Pending");

      break;

    case Status.approved:

      print("Order is Approved");

      break;

    case Status.rejected:

      print("Order is Rejected");

      break;
  }


  print("");


  // ===================================================
  // Example 11 — Day with switch
  // ===================================================

  switch (today) {

    case Day.monday:

      print("Start of the week");

      break;

    case Day.tuesday:

      print("Tuesday");

      break;

    case Day.wednesday:

      print("Middle of the week");

      break;

    case Day.thursday:

      print("Thursday");

      break;

    case Day.friday:

      print("Friday");

      break;

    case Day.saturday:

      print("Weekend");

      break;

    case Day.sunday:

      print("Weekend");

      break;
  }


  print("");


  // ===================================================
  // Example 12 — Finding Enum by Index
  // ===================================================

  Status selectedStatus = Status.values[1];

  print("Selected Status: $selectedStatus");


  print("");


  // ===================================================
  // Example 13 — Finding Enum by Name
  // ===================================================

  String statusName = "approved";

  Status foundStatus = Status.values.firstWhere(
        (value) => value.name == statusName,
  );

  print("Found Status: $foundStatus");
}


// =====================================================
// ENUM RULES
// =====================================================
//
// 1. Enum contains a fixed set of values.
//
// 2. Every enum value has a type.
//
// 3. Enum values have an index.
//
// 4. Index starts from 0.
//
// 5. .values returns all enum values.
//
// 6. .name returns the name of an enum value.
//
// 7. Enum can be used with if.
//
// 8. Enum can be used with switch.
//
// 9. Enum can be used with loops.
//
// 10. Enum improves type safety.
//
// 11. You cannot dynamically add new enum values.
//
// =====================================================