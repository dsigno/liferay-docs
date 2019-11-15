---
header-id: patching-liferay
---

# @product@へのパッチ適用

[TOC levels=1-4]

私たちは常に、何も問題のない、完璧な状態ですべての@product@をリリースできるよう努力していますが、現実は目標としていたほど完璧なリリースができないこともあります。しかし、それに対する解決策も用意してあります。すべての@product@バンドルには、フィックスパックとホットフィックスという、2種類のパッチのインストールを処理するパッチングツールが含まれています。

**重要：**定期的に必ず@product@のインストールとデータベースをバックアップするようにしてください。（特にパッチを適用する前に）（パックアップに関する詳細はこちら：[back up your @product@ installation and database](/docs/7-1/deploy/-/knowledge_base/d/backing-up-a-liferay-installation)）パッチングツールはコード変更をインストールし、そしてこれらのいくつかは（必要ならば）立ち上げ時に自動的にデータを変更します。

 特定のフィックスパック（サービスパック）には、データ/スキーマの[micro changes](/docs/7-1/tutorials/-/knowledge_base/t/meaningful-schema-versioning#micro-change-examples)を含めることができます。しかしこれらは オプションで元に戻すことができます。モジュールのアップグレードとそれらに含まれるあらゆる小さな変更は、デフォルトでサーバーの立ち上げ時に適用されます。もしくはマニュアルで[`autoUpgrade`プロパティを無効に](/docs/7-1/deploy/-/knowledge_base/d/running-the-upgrade)できます。
サーバーの立ち上げ時に、コアの小さな変更のすべてがスキップされます。その代わりに、[アップグレードツールl](/docs/7-1/deploy/-/knowledge_base/d/upgrading-to-liferay-71)を使ってサーバの立ち上げ前にそれを適用できます。

** 注：**[クラスターにパッチを適用する場合](/docs/7-1/deploy/-/knowledge_base/d/updating-a-cluster)は他に考慮しなければならない点がいくつかあります。

