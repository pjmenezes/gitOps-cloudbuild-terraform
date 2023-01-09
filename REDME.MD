# Gerenciando a infraestrutura como código com o Terraform, Cloud Build e GitOps


> Para este laboratório utilizei os seguintes produto do Google Cloud: [Cloud Build](https://cloud.google.com/build/)
[Cloud Storage](https://cloud.google.com/storage/)
[Compute Engine](https://cloud.google.com/compute)

## Pré requisitos
Primeiramente é necessário criar um repositório. Então criei em: [https://github.com/pjmenezes/gitOps-cloudbuild-terraform](https://github.com/pjmenezes/gitOps-cloudbuild-terraform)

![Alt text](/images/01.png?raw=true "Billing export")

Em seguida crie um bucket no Cloud Storage
![Alt text](/images/21.png?raw=true "Billing export")

Você precisa ativar as ``api`` necessárias
   ```bash
   gcloud services enable cloudbuild.googleapis.com compute.googleapis.com`
   ```
## Criando

Em Cloud Build no munu lateral, clique em [Gatilhos ou Triggers](https://console.cloud.google.com/cloud-build/triggers)

![Alt text](/images/02.png?raw=true "Billing export")

Clique em ``CONECTAR REPOSITÓRIO``
![Alt text](/images/04.png?raw=true "Billing export")

Na etapa 1, selecione a opção GitHub
![Alt text](/images/05.png?raw=true "Billing export")

Em seguida clique em ``CONTINUAR``

Na etapa 2, selecione a opção ``Only Select Repositories`` para selecionar um repositório em especifico, neste caso, vamos selecionar o repositório que criamos.
![Alt text](/images/06.png?raw=true "Billing export")

Na etapa 3, em Selecionar Repositório, selecione o repositório que você adicionou.
![Alt text](/images/07.png?raw=true "Billing export")

E clique em ``OK`` e maque o termo abaixo:

![Alt text](/images/08.png?raw=true "Billing export")

Na etapa 4, clique em ``CRIAR UM GATILHO``
![Alt text](/images/09.png?raw=true "Billing export")

- Você precisa adicionar um nome para o gatilho 

- Na seção Evento, selecione ``Enviar para uma ramificação.``
![Alt text](/images/10.png?raw=true "Billing export")

- Na seção Origem, selecione .* no campo Ramificação.

- Em Configuração, você pode deixar a opção padrão de ``Detecção automática``. Neste laboratório selecionei a opção: ``Arquivo de Configuração de Cloud Build (yaml e json)`` 

Em seguida clique em ``CRIAR``
![Alt text](/images/12.png?raw=true "Billing export")

![Alt text](/images/11.png?raw=true "Billing export")

Parabéns! Você conseguiu. A partir de agora em qualquer momento que realizar um ``push``
![Alt text](/images/15.png?raw=true "Billing export")

será executado a compilação de acordo com suas especificações e produzir os artefatos.

![Alt text](/images/13.png?raw=true "Billing export")

![Alt text](/images/14.png?raw=true "Billing export")
Clique emm [HISTÓRICO](https://console.cloud.google.com/cloud-build/builds) no Cloud Build para visualizar 
![Alt text](/images/19.png?raw=true "Billing export")
Clique nele
![Alt text](/images/17.png?raw=true "Billing export")

Visualize o resumo da criação
![Alt text](/images/18.png?raw=true "Billing export")

Assim que finalizar, o status será mudado para concluido
![Alt text](/images/20.png?raw=true "Billing export")


Você pode conferiar visualizando se realmente criou ou não

![Alt text](/images/22.png?raw=true "Billing export")
![Alt text](/images/23.png?raw=true "Billing export")
![Alt text](/images/24.png?raw=true "Billing export")
![Alt text](/images/25.png?raw=true "Billing export")




