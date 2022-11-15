# Generated by Django 4.1 on 2022-11-15 10:53

import ckeditor.fields
from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ("Home", "0006_alter_post_description"),
    ]

    operations = [
        migrations.DeleteModel(
            name="homepost",
        ),
        migrations.AlterField(
            model_name="perform",
            name="description",
            field=ckeditor.fields.RichTextField(blank=True, null=True),
        ),
        migrations.AlterField(
            model_name="post",
            name="description",
            field=ckeditor.fields.RichTextField(blank=True, null=True),
        ),
    ]
