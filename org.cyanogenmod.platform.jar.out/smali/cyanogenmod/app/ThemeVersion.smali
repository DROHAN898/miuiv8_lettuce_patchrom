.class public Lcyanogenmod/app/ThemeVersion;
.super Ljava/lang/Object;
.source "ThemeVersion.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/app/ThemeVersion$ComponentVersion;,
        Lcyanogenmod/app/ThemeVersion$ThemeVersionImpl2;,
        Lcyanogenmod/app/ThemeVersion$ThemeVersionImpl3;
    }
.end annotation


# static fields
.field private static final CM11:I = 0x1

.field private static final CM12_PRE_VERSIONING:I = 0x2

.field private static final MIN_SUPPORTED_THEME_VERSION_FIELD_NAME:Ljava/lang/String; = "MIN_SUPPORTED_THEME_VERSION"

.field private static final THEME_VERSION_CLASS_NAME:Ljava/lang/String; = "android.content.ThemeVersion"

.field private static final THEME_VERSION_FIELD_NAME:Ljava/lang/String; = "THEME_VERSION"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getComponentVersion(Lcyanogenmod/app/ThemeComponent;)Lcyanogenmod/app/ThemeVersion$ComponentVersion;
    .locals 2

    invoke-static {}, Lcyanogenmod/app/ThemeVersion;->getVersion()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-static {p0}, Lcyanogenmod/app/ThemeVersion$ThemeVersionImpl2;->getDeviceComponentVersion(Lcyanogenmod/app/ThemeComponent;)Lcyanogenmod/app/ThemeVersion$ComponentVersion;

    move-result-object v1

    return-object v1

    :cond_1
    invoke-static {p0}, Lcyanogenmod/app/ThemeVersion$ThemeVersionImpl3;->getDeviceComponentVersion(Lcyanogenmod/app/ThemeComponent;)Lcyanogenmod/app/ThemeVersion$ComponentVersion;

    move-result-object v1

    return-object v1
.end method

.method public static getComponentVersions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcyanogenmod/app/ThemeVersion$ComponentVersion;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcyanogenmod/app/ThemeVersion;->getVersion()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcyanogenmod/app/ThemeVersion$ThemeVersionImpl2;->getDeviceComponentVersions()Ljava/util/List;

    move-result-object v1

    return-object v1

    :cond_1
    invoke-static {}, Lcyanogenmod/app/ThemeVersion$ThemeVersionImpl3;->getDeviceComponentVersions()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static getMinSupportedVersion()I
    .locals 6

    :try_start_0
    const-string/jumbo v4, "android.content.ThemeVersion"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v4, "MIN_SUPPORTED_THEME_VERSION"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-ge v4, v5, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public static getVersion()I
    .locals 6

    :try_start_0
    const-string/jumbo v4, "android.content.ThemeVersion"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v4, "THEME_VERSION"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :goto_0
    return v3

    :catch_0
    move-exception v0

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-ge v4, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    goto :goto_0
.end method
