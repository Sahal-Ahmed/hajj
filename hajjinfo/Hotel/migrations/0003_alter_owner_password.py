# Generated by Django 4.1 on 2022-12-02 12:46

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("Hotel", "0002_owner_password"),
    ]

    operations = [
        migrations.AlterField(
            model_name="owner",
            name="password",
            field=models.CharField(max_length=50),
        ),
    ]