# WC 2026 App

Aplicativo desenvolvido em Flutter como projeto de estudo e prática de uma arquitetura moderna para aplicações mobile, explorando organização de código, autenticação, gerenciamento de sessão, consumo de APIs e navegação.

## Tecnologias e principais recursos

* **Flutter / Dart** — desenvolvimento do aplicativo.
* **Provider** — injeção de dependências e gerenciamento de objetos observáveis.
* **ChangeNotifier** — gerenciamento e notificação de estados da aplicação.
* **GoRouter** — navegação e controle de rotas públicas e privadas, incluindo redirecionamento conforme o estado da sessão.
* **Dio** — comunicação HTTP com a API.
* **Retrofit** — definição declarativa dos endpoints e geração do cliente HTTP sobre o Dio.
* **JSON Serializable / JSON Annotation** — serialização e desserialização dos modelos da API.
* **Equatable** — comparação de objetos e estados por valor.
* **Flutter Secure Storage** — armazenamento seguro de token e dados da sessão.
* **Validatorless** — validação dos formulários.
* **Google Fonts** — utilização de fontes personalizadas.
* **Flutter SVG** — suporte à utilização de imagens SVG.
* **Loading Animation Widget** — componentes de animação para estados de carregamento.
* **Logging** — registro de informações e erros durante a execução.

## Arquitetura

O projeto utiliza uma organização baseada em **MVVM**, com separação entre apresentação, ViewModels, casos de uso, repositórios e acesso à API.

Também utiliza o padrão **Command** para encapsular operações assíncronas e seus estados de execução, sucesso e erro.

A autenticação possui gerenciamento centralizado de sessão, permitindo que o aplicativo restaure a sessão armazenada e controle automaticamente o acesso entre rotas públicas e privadas.

## Objetivo

Este projeto faz parte do processo de estudo e aprofundamento em desenvolvimento Flutter, buscando aplicar na prática conceitos de arquitetura, autenticação, persistência local, consumo de APIs, navegação e gerenciamento de estado.
