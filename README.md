# template_deploy-to-netlify
Netlify 向けのデプロイテンプレート

## デプロイ環境
### production
Netlify で 「 Production branch 」 の設定に `production-public` ブランチを設定してください。

マージリクエストなどで `production` ブランチにプッシュイベントが発生されるとデプロイされます。

### staging
使用する場合は Netlify の 「 Branch deploys 」の設定に `staging-public` ブランチを追加してください。

マージリクエストなどで `staging` ブランチにプッシュイベントが発生するとデプロイされます。

### pull-req-preview
使用する場合は Netlify の 「 Branch deploys 」 の設定に `pull-req-preview-public` ブランチを追加してください。

プルリク時（ プルリク後のプッシュを含む ）にデプロイされます。

Netlify の 「 deploy-preview 」 とは異なります。

### deploy-preview (optional)
使用する場合は `.github/workflows/templates/deploy-preview.yml` を `.github/workflows` 下に移動して、 「 deploy-preview 」 用のデプロイワークフローを有効にしてください。

また、Netlify の 「 Branch deploys 」 の項目に `staging` ブランチを追加してください。

「 deploy-preview 」 を使用する場合、プッシュ時に、毎回、ワークフローで生成されたファイルのマージが必要となります。

面倒な場合は、前述の [pull-req-preview](#pull-req-preview) を使ってください。

## 使用例
テンプレートをそのまま使用する場合のマージの流れです。

`作業用ブランチ` => `staging` => `production` => `master`

使用環境によって、ワークフローを調整してください。