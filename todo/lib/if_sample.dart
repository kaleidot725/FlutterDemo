void ifSample() {
  final now = DateTime.now();
  if (now.hour >= 6 && now.hour < 12) {
    print("Good morning");
  } else if (now.hour >= 12 && now.hour < 18) {
    print("Good afternoon");
  } else {
    print("Good night");
  }
}

void ifCaseSample() {
  final (String?, int?) response = ('OK', 200);
  if (response case (String message, int statusCode)) {
    print("Message: $message, Status Code: $statusCode");
  } else {
    print("No message or status code");
  }

  if (response case (String? message, int statusCode) when statusCode == 200) {
    print("Message: $message, Status Code: $statusCode");
  } else {
    print("No message or status code");
  }
}

void switchSample() {
  final number = 1;

  print("-------- 1");
  switch (number) {
    case 1:
      {
        print("1");
      }
    case 2:
      {
        print("2");
      }
    case 3:
      break;
    case 4:
      {
        print("4");
      }
    default:
      {
        print("default");
        break;
      }
  }

  print("-------- 2");
  switch (number) {
    case 1:
      {
        print("1");
        continue other;
      }
    case 2:
      {
        print("2");
      }
    case 3:
      break;
    other:
    default:
      {
        print("default");
        break;
      }
  }

  print("-------- 3");
  switch (number) {
    case (int number) when 1 == number:
      {
        print("Int 1");
      }
    case (int number) when "1" == number.toString():
      {
        print("String 1");
      }
  }
}

void switchExpressionSample() {
  final int statusCode = 0;
  final message = switch (statusCode) {
    200 => "Success",
    _ => "Unknown",
  };
  print(message);
}
