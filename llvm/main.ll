declare i32 @printf(i8*, ...)

define i32 @add(i32 %a, i32 %b) {
  	%result = add i32 %a, %b
  	ret i32 %result
}

define i32 @sub(i32 %a, i32 %b) {
  	%result = sub i32 %a, %b
	ret i32 %result
}

define i32 @mul(i32 %a, i32 %b) {
 	%result = mul i32 %a, %b
	ret i32 %result
}

define i32 @div(i32 %a, i32 %b) {
	%result = sdiv i32 %a, %b
 	ret i32 %result
}

define float @fdiv(float %a, float %b) {
  	%result = fdiv float %a, %b
 	ret float %result
}

@formatStr = constant [3 x i8] c"%d\0A"

define i32 @main() {
  	%result = call i32 @div(i32 10, i32 3)

  	%call = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @formatStr, i32 0, i32 0), i32 %result)
  	ret i32 0
}