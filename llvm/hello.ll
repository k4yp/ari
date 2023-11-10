@formatString = private constant [4 x i8] c"%d\0A\00"

declare i32 @printf(i8*, ...)

define i32 @main() {
  %num1 = alloca i32
  %num2 = alloca i32

  store i32 5, i32* %num1
  store i32 700, i32* %num2

  %loaded_num1 = load i32, i32* %num1
  %loaded_num2 = load i32, i32* %num2

  %sum = add i32 %loaded_num1, %loaded_num2
 
  %resultPtr = alloca i32
  store i32 %sum, i32* %resultPtr
  %result = load i32, i32* %resultPtr
  %formatPtr = getelementptr [4 x i8], [4 x i8]* @formatString, i32 0, i32 0
  call i32 (i8*, ...) @printf(i8* %formatPtr, i32 %result)

  ret i32 0
}
