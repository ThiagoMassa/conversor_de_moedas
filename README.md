# Conversor_de_moedas

Meu terceiro projeto feito em  Flutter utilizando API HgBrasil.

## **Intuito**

O intuito do projeto era exercitar o conteúdo já aprendido nos primeiros módulos do curso **Criação de Apps Android e iOS com Flutter - Crie 16 Apps** do professor Daniel Ciolfi.

### **Explicação App**

O aplicativo tem por finalidade fazer a conversão de moedas do valor atual do mercado.

Link de acesso à documentação da API <https://hgbrasil.com/status/finance/>

**Método de conversão para o real**:

 void _realChanged(String text) {

​    if (text.isEmpty) {

​      _clearAll();

​      return;

​    }

​    double real = double.parse(text);

​    dolarController.text = (real / dolar).toStringAsFixed(2);

​    euroController.text = (real / euro).toStringAsFixed(2);

​    libraController.text = (real / libra).toStringAsFixed(2);

​    pesoController.text = (real / peso).toStringAsFixed(2);

​    canadenseController.text = (real / canadense).toStringAsFixed(2);

​    australianosController.text = (real / australianos).toStringAsFixed(2);

​    ieneController.text = (real / iene).toStringAsFixed(2);

​    bitcoinController.text = (real / bitcoin).toStringAsFixed(5);

  }

