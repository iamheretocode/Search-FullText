# Generated by Django 3.2.9 on 2021-11-18 11:10

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Medicine',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=255)),
                ('price', models.FloatField()),
                ('manufacturer_name', models.CharField(max_length=255)),
                ('salt_name', models.TextField(null=True)),
                ('drug_form', models.TextField(null=True)),
                ('pack_size', models.CharField(max_length=150)),
                ('strength', models.TextField(null=True)),
                ('unit', models.CharField(max_length=50, null=True)),
            ],
        ),
    ]