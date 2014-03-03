!SLIDE


## 30 sbt plugins in 15 minutes

-eugene yokota (@eed3si9n)

!SLIDE

## [earldouglas/xsbt-web-plugin](https://github.com/earldouglas/xsbt-web-plugin)

An sbt plugin for building Scala Web applications

!SLIDE

## [spray/sbt-revolver](https://github.com/spray/sbt-revolver)

- Starting and stopping your application in the background of your interactive SBT shell
- With JRebel sbt-revolver supports hot reloading

<pre>> re-start %args% --- %jvmArgs%
</pre>

!SLIDE

## [sbt/sbt-appengine](https://github.com/sbt/sbt-appengine)

deploy your webapp to appengine using sbt.

    > appengineDeploy

!SLIDE

## [softprops/coffeescripted-sbt](https://github.com/softprops/coffeescripted-sbt)

pour some coffee for scala

    > coffee

!SLIDE

## [sbt/sbt-jshint-plugin](https://github.com/sbt/sbt-jshint-plugin)

Allows jslint to be used from within sbt. 

By default linting occurs as part of your project's `test` task. Both `src/main/assets/**/*.js` and `src/test/assets/**/*.js` sources are linted.

!SLIDE

## [sbt/sbt-man](https://github.com/sbt/sbt-man)

Looks up scaladoc.

    > man Traversable /:
    [man] scala.collection.Traversable
    [man] def /:[B](z: B)(op: (B ⇒ A ⇒ B)): B
    [man] Applies a binary operator to a start value and all elements of this
    collection, going left to right. Note: /: is alternate syntax for foldLeft;
    z /: xs is the same as xs foldLeft z. Note: will not terminate for infinite-
    sized collections. Note: might return different results for different runs,
    unless the underlying collection type is ordered. or the operator is
    associative and commutative. 

!SLIDE

## [sbt/sbt-scalariform](https://github.com/sbt/sbt-scalariform)

sbt plugin adding support for source code formatting using Scalariform

    ScalariformKeys.preferences := ScalariformKeys.preferences.value
      .setPreference(AlignSingleLineCaseStatements, true)
      .setPreference(DoubleIndentClassDeclaration, true)
      .setPreference(PreserveDanglingCloseParenthesis, true)

!SLIDE

## [steppenwells/sbt-sh](https://github.com/steppenwells/sbt-sh)

plugin to run shell commands from within the sbt shell

    > sh git status
    # On branch master...

!SLIDE

## [sbt/git](https://github.com/sbt/sbt-git)

A GIT plugin for SBT 

    > git status
    # On branch master...

!SLIDE

## [softprops/sbt-growl-plugin](https://github.com/softprops/sbt-growl-plugin)

Growling sbt test results so you don't have to

!SLIDE

## [sbt/sbt-buildinfo](https://github.com/sbt/sbt-buildinfo)

I know this because build.sbt knows this. 

    sourceGenerators in Compile <+= buildInfo

    buildInfoKeys := Seq[BuildInfoKey](name, version, scalaVersion, sbtVersion)

Generates

    package hello

    case object BuildInfo {
      val name = "helloworld"
      val version = "0.1-SNAPSHOT"
      val scalaVersion = "2.9.2"
      val sbtVersion = "0.12.0"
    }

!SLIDE

## [sbt/sbt-boilerplate](https://github.com/sbt/sbt-boilerplate)

sbt plugin for generating scala.Tuple/Function related boilerplate code 

    [#def applyFunc[P1, R](input: Tuple1[P1], func: (P1) => R): R =
      func(input._1)#
    ]

This expands to:

    def applyFunc[P1, R](input: Tuple1[P1], func: (P1) => R): R =
      func(input._1)
    def applyFunc[P2, R](input: Tuple2[P2], func: (P2) => R): R =
      func(input._2)
    def applyFunc[P3, R](input: Tuple3[P3], func: (P3) => R): R =
      func(input._3)
    ....

!SLIDE

## [eed3si9n/scalaxb](https://github.com/eed3si9n/scalaxb)

scalaxb is an XML data binding tool for Scala.

    sourceGenerators in Compile <+= scalaxb in Compile

!SLIDE

## [sbt/sbt-site](https://github.com/sbt/sbt-site)

Site generation for SBT

    > previewSite

!SLIDE

## [sbt/sbt-ghpages](https://github.com/sbt/sbt-ghpages)

ghpages support

    > ghpagesPushSite

!SLIDE

## [sbt/sbt-unidoc](https://github.com/sbt/sbt-unidoc)

sbt plugin to create a unified API document across projects

    > unidoc
    ...
    [info] Generating Scala API documentation for main sources to /unidoc-sample/target/scala-2.10/unidoc...
    [info] Scala API documentation generation successful.

!SLIDE

## [scoverage/sbt-scoverage](https://github.com/scoverage/sbt-scoverage)

SBT plugin for scoverage

    > clean
    > scoverage:test

!SLIDE

## [sbt/sbt-pom-reader](https://github.com/sbt/sbt-pom-reader)

Translates xml -> awesome. Maven-ish support for sbt

!SLIDE

## [sbt/sbt-pgp](https://github.com/sbt/sbt-pgp)

PGP plugin for SBT 0.12+

    > publishSigned

!SLIDE

## [xerial/sbt-sonatype](https://github.com/xerial/sbt-sonatype)

publishing Scala/Java projects to the Maven central

    > publishSigned
    > sonatypeRelease

!SLIDE

## [softprops/bintray-sbt](https://github.com/softprops/bintray-sbt)

fresh packages delivered from your sbt console

    > bintray::changeCredentials
    > bintray::whoami
    > publish

!SLIDE

## [sbt/sbt-release](https://github.com/sbt/sbt-release)

A release plugin for sbt

    > release

!SLIDE

## [sbt/sbt-proguard](https://github.com/sbt/sbt-proguard)

Proguard sbt plugin

    > proguard:proguard

!SLIDE

## [sbt/sbt-assembly](https://github.com/sbt/sbt-assembly)

Deploy fat JARs. Restart processes.

Pack your class files and all your dependencies into a single JAR file:

    > assembly

!SLIDE

## [sbt/sbt-native-packager](https://github.com/sbt/sbt-native-packager)

creates native packages:

    > stage
    > universal:package-zip-tarball
    > universal:package-xz-tarball
    > universal:package-bin
    > windows:package-bin
    > windows:package-msi
    > debian:package-bin
    > rpm:package-bin

!SLIDE

## [sbt/sbt-osgi](https://github.com/sbt/sbt-osgi)

sbt plugin for creating OSGi bundles

    > osgiBundle

!SLIDE

## [softprops/ls-sbt](https://github.com/softprops/ls)

a scala card catalog (http://ls.implicit.ly/)

    > lsWriteVersion
    > lsycn

!SLIDE

## [pfn/android-sdk-plugin](https://github.com/pfn/android-sdk-plugin)

An easy-to-use sbt plugin for working with all Android projects

    > android:package

!SLIDE

## [jrudolph/sbt-cross-building](https://github.com/jrudolph/sbt-cross-building)

Enable cross-building of sbt plugins

    > ^ compile
    > ^^0.11.0

!SLIDE

## [scripted-plugin](https://github.com/sbt/sbt/tree/0.13/scripted/plugin)

Runs scripted test

    > scripted

!SLIDE

## [jrudolph/sbt-dependency-graph](https://github.com/jrudolph/sbt-dependency-graph)

sbt plugin to create a dependency graph for your project.

    > dependency-graph
    > dependency-tree
    > dependency-license-info

!SLIDE

## [rtimush/sbt-updates](https://github.com/rtimush/sbt-updates)

SBT plugin that can check maven repositories for dependency updates

    > dependency-updates
    [info] Found 3 dependency updates for test-project
    [info]   ch.qos.logback:logback-classic : 0.8   -> 0.8.1 -> 0.9.30 -> 1.0.13
    [info]   org.scala-lang:scala-library   : 2.9.1 -> 2.9.3 -> 2.10.3
    [info]   org.slf4j:slf4j-api            : 1.6.4 -> 1.6.6 -> 1.7.5

!SLIDE

## [sbt/sbt-dirty-money](https://github.com/sbt/sbt-dirty-money)

clean Ivy2 cache 

    > show cleanCacheFiles
    > cleanCache
    > show cleanLocalFiles
    > cleanLocal
    > cleanCache "net.databinder.dispatch" % "dispatch-json4s"
