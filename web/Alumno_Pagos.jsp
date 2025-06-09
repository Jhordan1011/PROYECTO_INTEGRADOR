<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Instituto Innovatech Arequipa - Pagos</title>
    <link rel="stylesheet" href="Estilos/E_Alm_Pag.css" />
</head>
<body>
    <div class="container">
        <div class="header">
            <div class="institute-name">
                Instituto de Educación Superior Tecnológico Público Innovatech Arequipa
            </div>
        </div>
        
        <div class="page-title">
            Realiza tus pagos de forma
        </div>
        
        <div class="payment-options">
            <div class="payment-card" onclick="goToAccountStatus()">
                <div class="card-icon icon-document"></div>
                <div class="card-title">Estado de cuenta</div>
                <div class="card-description">
                    Encontrarás el resumen de tu historial de pagos; puedes ver el pago de tus cuotas, trámites y otros conceptos.
                </div>
            </div>
            
            <div class="payment-card" onclick="goToPaymentOptions()">
                <div class="card-icon icon-payment"></div>
                <div class="card-title">Opciones de pago</div>
                <div class="card-description">
                    Accede a pagos a través de app y banco por internet, agentes o ventanilla, y pago en línea.
                </div>
            </div>
        </div>
    </div>

    <script>
        function goToAccountStatus() {
            alert('Redirigiendo a Estado de cuenta...');
        }

        function goToPaymentOptions() {
            alert('Redirigiendo a Opciones de pago...');
        }
    </script>
</body>
</html>
