plugins {
    kotlin("jvm") version "2.2.0"
}

group = "org.example"
version = "1.0-SNAPSHOT"

repositories {
    mavenCentral()
}

dependencies {
    testImplementation(kotlin("test"))
    implementation("com.mysql:mysql-connector-j:8.3.0") //MySQL
}

tasks.test {
    useJUnitPlatform()
}
kotlin {
    jvmToolchain(22)
}