using System;
//CLASE DE CUENTA
public class Cuenta
{
    public string Titular { get; set; }
    public decimal Saldo { get; set; }

    public Cuenta(string titular, decimal saldo)
    {
        Titular = titular;
        Saldo = saldo;
    }

    public virtual void Depositar(decimal monto)
    {
        Saldo += monto;
        Console.WriteLine($"Su Saldo actual ahora es de: {Saldo}");
    }

    public virtual void Retirar(decimal monto)
    {
        if (monto > Saldo)
        {
            Console.WriteLine("Monto mayor al saldo actual, favor reiniciar la operación");
            return;
        }
        Saldo -= monto;
        Console.WriteLine($"El retiro se realizó con éxito. Su Saldo actual ahora es de: {Saldo}");
    }
}

public class CuentaCorriente : Cuenta
{
    public decimal LimiteDiario { get; set; }
    public string TipoCuentaCorriente { get; set; }

    public CuentaCorriente(string titular, decimal saldo, decimal limiteDiario, string tipoCuentaCorriente)
        : base(titular, saldo)
    {
        LimiteDiario = limiteDiario;
        TipoCuentaCorriente = tipoCuentaCorriente;
    }

}

public class CajaDeAhorro : Cuenta
{
    public decimal TasaInteres { get; set; }

    public CajaDeAhorro(string titular, decimal saldo, decimal tasaInteres)
        : base(titular, saldo)
    {
        TasaInteres = tasaInteres;
    }

}


public class Program
{
    public static void Main()
    {
        var cuenta = new Cuenta("Juan", 1000);
        string opcion = "";
        while (opcion != "4")
        {
            Console.WriteLine("Bienvenido al Sistema de Cuentas, ¿Que operación desea realizar?, Indiquenos con el número correspondiente :)");
            Console.WriteLine("1: Consulta de cuentas");
            Console.WriteLine("2: Depósito");
            Console.WriteLine("3: Retiro");
            Console.WriteLine("4: Salir");
            opcion = Console.ReadLine();
            switch (opcion)
            {
                case "1":
                    Console.WriteLine("Eliga la cuenta a consultar");
                    string cuentaOpcion = Console.ReadLine();
                    if (cuentaOpcion == "a")
                    {
                        Console.WriteLine($"Su Saldo actual de Caja es de: {cuenta.Saldo}");
                    }
                    else if (cuentaOpcion == "b")
                    {
                        Console.WriteLine($"Su Saldo actual de Cuenta es de: {cuenta.Saldo}");
                    }
                    break;
                case "2":
                    Console.WriteLine("Ingrese el monto a depositar");
                    decimal montoDeposito = decimal.Parse(Console.ReadLine());
                    cuenta.Depositar(montoDeposito);
                    break;
                case "3":
                    Console.WriteLine("Ingrese el monto a retirar");
                    decimal montoRetiro = decimal.Parse(Console.ReadLine());
                    cuenta.Retirar(montoRetiro);
                    break;
                case "4":
                    Console.WriteLine("Gracias por utilizar el servicio!");
                    break;
                default:
                    Console.WriteLine("Opción no válida. Por favor, intente de nuevo.");
                    break;
            }
        }
    }
}
