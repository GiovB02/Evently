# Project Blueprint

## Overview

This document outlines the style, design, and features of a multi-page Flutter application for event exploration and social planning.

## Style and Design

-   **Theme:** Modern, visually balanced layout with clean spacing, using Material 3 and the `google_fonts` package.
-   **Color Palette:** Vibrant and energetic, seeded with `Colors.deepPurple`.
-   **Typography:** Expressive and hierarchical, with clear emphasis on titles, headlines, and important text, using the Lato font family.
-   **Iconography:** Modern and intuitive icons to enhance user understanding and navigation.
-   **Visual Effects:** Subtle noise texture on the main background, multi-layered drop shadows for depth, and "glow" effects on interactive elements.
-   **Interactivity:** Polished and responsive UI components (buttons, text fields, etc.) with clear visual feedback.
-   **Accessibility:** Adherence to a11y standards to ensure the app is usable by a wide variety of users.

## Implemented Features

### Frontend

-   **App Structure:** A multi-page Flutter application with a bottom navigation bar for main screen access.
-   **Screens (Placeholders):**
    1.  **Event Exploration:** For browsing events.
    2.  **Create Plan:** For organizing social outings.
    3.  **Publish New Event:** For adding new events.
    4.  **User Profile:** For user-specific information.
-   **Theming:** A modern theme using Material 3 and `google_fonts` for a consistent and visually appealing look.

### Backend

-   **Authentication:** Middleware for authenticating users via Firebase.
-   **Users:** Endpoints for managing user profiles and friend lists.
-   **Events:** Endpoints for creating, updating, deleting, and attending events.

## Current Plan

-   Implement the UI for the **Event Exploration** screen.
-   Connect the **Event Exploration** screen to the backend to fetch and display a list of events.
-   Build out the UI for the remaining placeholder screens.
