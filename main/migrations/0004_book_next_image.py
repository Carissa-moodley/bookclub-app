# Generated by Django 5.0.6 on 2024-06-17 08:13

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0003_book_read_image'),
    ]

    operations = [
        migrations.AddField(
            model_name='book_next',
            name='image',
            field=models.ImageField(blank=True, null=True, upload_to='book_images/'),
        ),
    ]
