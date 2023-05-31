public class euler112 {
    
    public static boolean increasing(int n) {
        int ultimoDigito = n % 10;
        int restoNumero = n/10;
        int penultimoDigito = restoNumero % 10;
        while (restoNumero != 0) {
            if (ultimoDigito < penultimoDigito)
                return false;
        
             else {
                n = restoNumero;
                ultimoDigito = n % 10;
                restoNumero = n/10;
                penultimoDigito = restoNumero % 10;
			}
		}
    return true;
    }
    
    public static boolean decreasing(int n) {
        int ultimoDigito = n % 10;
        int restoNumero = n/10;
        int penultimoDigito = restoNumero % 10;
        while (restoNumero != 0) {
            if (ultimoDigito > penultimoDigito)
                return false;
        
             else {
                n = restoNumero;
                ultimoDigito = n % 10;
                restoNumero = n/10;
                penultimoDigito = restoNumero % 10;
			}
		}
    return true;
    }
    
    public static boolean ehBouncy(int n) {
        return !(increasing(n) || decreasing(n));
    }
    
    public static void main(String[] args) {
        int totalBouncys = 525;
        int totalNums = 999;
        int proporcao = (totalBouncys * 100) / totalNums;

        while(proporcao != 99) {
            totalNums += 1;
            if (ehBouncy(totalNums))
                totalBouncys += 1;
            proporcao = (totalBouncys * 100) / totalNums;
        }
    
        System.out.println(totalNums);
    }
}