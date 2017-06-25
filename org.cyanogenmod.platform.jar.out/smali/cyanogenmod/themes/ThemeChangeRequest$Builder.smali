.class public Lcyanogenmod/themes/ThemeChangeRequest$Builder;
.super Ljava/lang/Object;
.source "ThemeChangeRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/themes/ThemeChangeRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mPerAppOverlays:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mRequestType:Lcyanogenmod/themes/ThemeChangeRequest$RequestType;

.field mThemeComponents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mWallpaperId:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->mThemeComponents:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->mPerAppOverlays:Ljava/util/Map;

    sget-object v0, Lcyanogenmod/themes/ThemeChangeRequest$RequestType;->USER_REQUEST:Lcyanogenmod/themes/ThemeChangeRequest$RequestType;

    iput-object v0, p0, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->mRequestType:Lcyanogenmod/themes/ThemeChangeRequest$RequestType;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/ThemeConfig;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->mThemeComponents:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->mPerAppOverlays:Ljava/util/Map;

    sget-object v0, Lcyanogenmod/themes/ThemeChangeRequest$RequestType;->USER_REQUEST:Lcyanogenmod/themes/ThemeChangeRequest$RequestType;

    iput-object v0, p0, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->mRequestType:Lcyanogenmod/themes/ThemeChangeRequest$RequestType;

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->buildChangeRequestFromThemeConfig(Landroid/content/res/ThemeConfig;)V

    :cond_0
    return-void
.end method

.method private buildChangeRequestFromThemeConfig(Landroid/content/res/ThemeConfig;)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/res/ThemeConfig;->getFontPkgName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/content/res/ThemeConfig;->getFontPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setFont(Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    :cond_0
    invoke-virtual {p1}, Landroid/content/res/ThemeConfig;->getIconPackPkgName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/content/res/ThemeConfig;->getIconPackPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setIcons(Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    :cond_1
    invoke-virtual {p1}, Landroid/content/res/ThemeConfig;->getOverlayPkgName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/content/res/ThemeConfig;->getOverlayPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setOverlay(Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    :cond_2
    invoke-virtual {p1}, Landroid/content/res/ThemeConfig;->getOverlayForStatusBar()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Landroid/content/res/ThemeConfig;->getOverlayForStatusBar()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setStatusBar(Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    :cond_3
    invoke-virtual {p1}, Landroid/content/res/ThemeConfig;->getOverlayForNavBar()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Landroid/content/res/ThemeConfig;->getOverlayForNavBar()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setNavBar(Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    :cond_4
    invoke-virtual {p1}, Landroid/content/res/ThemeConfig;->getAppThemes()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/content/pm/ThemeUtils;->isPerAppThemeComponent(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/ThemeConfig$AppTheme;

    invoke-virtual {v3}, Landroid/content/res/ThemeConfig$AppTheme;->getOverlayPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setAppOverlay(Ljava/lang/String;Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    goto :goto_0

    :cond_6
    return-void
.end method


# virtual methods
.method public build()Lcyanogenmod/themes/ThemeChangeRequest;
    .locals 7

    new-instance v0, Lcyanogenmod/themes/ThemeChangeRequest;

    iget-object v1, p0, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->mThemeComponents:Ljava/util/Map;

    iget-object v2, p0, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->mPerAppOverlays:Ljava/util/Map;

    iget-object v3, p0, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->mRequestType:Lcyanogenmod/themes/ThemeChangeRequest$RequestType;

    iget-wide v4, p0, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->mWallpaperId:J

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcyanogenmod/themes/ThemeChangeRequest;-><init>(Ljava/util/Map;Ljava/util/Map;Lcyanogenmod/themes/ThemeChangeRequest$RequestType;JLcyanogenmod/themes/ThemeChangeRequest;)V

    return-object v0
.end method

.method public setAlarm(Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;
    .locals 1

    const-string/jumbo v0, "mods_alarms"

    invoke-virtual {p0, v0, p1}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setComponent(Ljava/lang/String;Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setAppOverlay(Ljava/lang/String;Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->mPerAppOverlays:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->mPerAppOverlays:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setBootanimation(Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;
    .locals 1

    const-string/jumbo v0, "mods_bootanim"

    invoke-virtual {p0, v0, p1}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setComponent(Ljava/lang/String;Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setComponent(Ljava/lang/String;Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->mThemeComponents:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->mThemeComponents:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setFont(Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;
    .locals 1

    const-string/jumbo v0, "mods_fonts"

    invoke-virtual {p0, v0, p1}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setComponent(Ljava/lang/String;Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setIcons(Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;
    .locals 1

    const-string/jumbo v0, "mods_icons"

    invoke-virtual {p0, v0, p1}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setComponent(Ljava/lang/String;Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setLiveLockScreen(Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;
    .locals 1

    const-string/jumbo v0, "mods_live_lock_screen"

    invoke-virtual {p0, v0, p1}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setComponent(Ljava/lang/String;Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setLockWallpaper(Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;
    .locals 1

    const-string/jumbo v0, "mods_lockscreen"

    invoke-virtual {p0, v0, p1}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setComponent(Ljava/lang/String;Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setNavBar(Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;
    .locals 1

    const-string/jumbo v0, "mods_navigation_bar"

    invoke-virtual {p0, v0, p1}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setComponent(Ljava/lang/String;Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setNotification(Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;
    .locals 1

    const-string/jumbo v0, "mods_notifications"

    invoke-virtual {p0, v0, p1}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setComponent(Ljava/lang/String;Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setOverlay(Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;
    .locals 1

    const-string/jumbo v0, "mods_overlays"

    invoke-virtual {p0, v0, p1}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setComponent(Ljava/lang/String;Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setRequestType(Lcyanogenmod/themes/ThemeChangeRequest$RequestType;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;
    .locals 0

    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->mRequestType:Lcyanogenmod/themes/ThemeChangeRequest$RequestType;

    return-object p0

    :cond_0
    sget-object p1, Lcyanogenmod/themes/ThemeChangeRequest$RequestType;->USER_REQUEST:Lcyanogenmod/themes/ThemeChangeRequest$RequestType;

    goto :goto_0
.end method

.method public setRingtone(Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;
    .locals 1

    const-string/jumbo v0, "mods_ringtones"

    invoke-virtual {p0, v0, p1}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setComponent(Ljava/lang/String;Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setStatusBar(Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;
    .locals 1

    const-string/jumbo v0, "mods_status_bar"

    invoke-virtual {p0, v0, p1}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setComponent(Ljava/lang/String;Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setWallpaper(Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;
    .locals 1

    const-string/jumbo v0, "mods_homescreen"

    invoke-virtual {p0, v0, p1}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setComponent(Ljava/lang/String;Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setWallpaperId(J)Lcyanogenmod/themes/ThemeChangeRequest$Builder;
    .locals 1

    iput-wide p1, p0, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->mWallpaperId:J

    return-object p0
.end method
