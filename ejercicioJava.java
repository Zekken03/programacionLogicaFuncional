class ejercicioJava {
    public static void main(String[] args) {
        int x, b, a;
        x=10; b=10;
        // Expresión 1
        //System.out.println(x++);  

        // Expresión 2
        //System.out.println(++x);  

        // Expresión 3
        //System.out.println(b++ * -3 == -3 % x++);  

        // Expresión 4 
        //System.out.println((30 - 10) / (++b + (30 % 7) * 2));  

        // Expresión 5 
        //System.out.println(x = (-50 * x++ * 80 % b / 4) * 8);  

        // Expresión 6
        //System.out.println(b *= x++ - 8 + 3 - 5 / 4 % -3 + 8);  

        // Expresión 7 
        //System.out.println(x = (b *= 50 / 30 * ++x + 80));  

        // Expresión 8
        //System.out.println(++x % 20 == -(x /= (b %= --x)));  

        // Expresión 9 
        //System.out.println(b++ * b-- / 3 % (++b * (10 + 1)));  

        // Expresión 10 
        //System.out.println((-10 * 0) * (-10 * (x++ + (x += x * x))));  

        // Expresión 11
        a=5;
        System.out.println(a * b == b++ + b-- + --b + x++ + x--);  
    }
}
