.class Lorg/cyanogenmod/platform/internal/IconCacheManagerServiceBroker$1;
.super Lorg/cyanogenmod/internal/themes/IIconCacheManager$Stub;
.source "IconCacheManagerServiceBroker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/IconCacheManagerServiceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/IconCacheManagerServiceBroker;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/platform/internal/IconCacheManagerServiceBroker;)V
    .locals 0

    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/IconCacheManagerServiceBroker$1;->this$0:Lorg/cyanogenmod/platform/internal/IconCacheManagerServiceBroker;

    invoke-direct {p0}, Lorg/cyanogenmod/internal/themes/IIconCacheManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cacheComposedIcon(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method
