# Generated by Django 4.1 on 2022-11-09 14:03

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("Home", "0003_service"),
    ]

    operations = [
        migrations.AddField(
            model_name="service",
            name="slug",
            field=models.SlugField(blank=True),
        ),
    ]
